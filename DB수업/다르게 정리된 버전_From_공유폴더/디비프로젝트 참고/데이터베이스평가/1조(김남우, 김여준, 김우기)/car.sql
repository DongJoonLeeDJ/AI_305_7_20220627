-- all spectation
SELECT
    *
FROM
    carinfotbl;

SELECT
    *
FROM
    stocked_cartbl;

SELECT
    *
FROM
    dealertbl;

SELECT
    *
FROM
    branchtbl;

SELECT
    *
FROM
    customertbl;

SELECT
    *
FROM
    tradetbl;

-- 1# : 거래와 고객의 정보
SELECT
    c.c_name   "고객명",
    insureance "보험",
    c_phone    "전화번호",
    trade_date "거래일",
    d_name     "직원명"
FROM
         customertbl c
    INNER JOIN tradetbl t ON c.c_name = t.c_name;
    
-- 2# : 거래된 차, 거래한 고객, 딜러 정보
SELECT
    c.c_name   "고객명",
    insureance "보험",
    c_phone    "전화번호",
    trade_date "거래일",
    d_name     "직원명",
    model      "외관명",
    price      "가격"
FROM
         tradetbl t
    INNER JOIN customertbl    c ON c.c_name = t.c_name
    INNER JOIN stocked_cartbl s ON t.s_number = s.s_number;
    
-- 3# : 민트급 차 목록
-- non-match data detected (carinfo - usedcar TABLE : sm5)
SELECT
    brand   "회사명",
    s.model "외관명",
    p_year  "출시년도",
    km      "주행거리",
    price   "가격"
FROM
    carinfotbl     c
    RIGHT OUTER JOIN stocked_cartbl s ON c.model = s.model
WHERE
    trouble IS NULL
ORDER BY
    price;
    
-- 4# : 민트급 가장 싼 차와 폐차급 가장 비싼 차
SELECT
    *
FROM
    stocked_cartbl
WHERE
    price IN ( (
        SELECT
            MAX(price)
        FROM
            stocked_cartbl
        WHERE
            trouble IS NOT NULL
    ), (
        SELECT
            MIN(price)
        FROM
            stocked_cartbl
        WHERE
            trouble IS NULL
    ) );

-- 5# 입고된 차 수
SELECT
    model    "외관명",
    COUNT(*) "입고 수"
FROM
    stocked_cartbl
GROUP BY
    model
ORDER BY
    COUNT(*) DESC;
    
-- 6# 랜덤 직원 조회
SELECT
    *
FROM
    dealertbl SAMPLE ( 20 );
        
-- 7# 거래된 항목들의 평균 값
SELECT
    CAST(AVG(price) AS INT) "평균값"
FROM
         stocked_cartbl s
    INNER JOIN tradetbl t ON s.s_number = t.s_number;
    
-- 8# 거래된 항목들의 가장 싼 값의 차종과 가장 비싼 값의 차종
SELECT
    price "가격",
    model "외관명"
FROM
         stocked_cartbl s
    INNER JOIN tradetbl t ON s.s_number = t.s_number
WHERE
    price IN ( (
        SELECT
            MIN(price)
        FROM
                 stocked_cartbl s
            INNER JOIN tradetbl t ON t.s_number = s.s_number
    ), (
        SELECT
            MAX(price)
        FROM
                 stocked_cartbl s
            INNER JOIN tradetbl t ON t.s_number = s.s_number
    ) )
ORDER BY
    price ASC;

-- #9 : 직원들을 직급별로 정렬하고 성씨 순으로 정렬한 읽기 전용 뷰 생성
CREATE VIEW v_dealertbl AS
    SELECT
        *
    FROM
        dealertbl
    ORDER BY
        (
            CASE
                WHEN position = '사원' THEN
                    1
                WHEN position = '대리' THEN
                    2
                WHEN position = '과장' THEN
                    3
                WHEN position = '차장' THEN
                    4
                ELSE
                    5
            END
        ),
        position ASC,
        d_name ASC
WITH READ ONLY;

-- 10# 뷰 조회
SELECT
    *
FROM
    v_dealertbl;
    
-- 11# 출력이 2000 이상, 4인승 이상, 민트급x 인 차 목록
SELECT
    *
FROM
         stocked_cartbl s
    INNER JOIN carinfotbl c ON s.model = c.model
WHERE
        c.cc >= 2000
    AND c.boarding >= 4
    AND s.trouble IS NOT NULL;
    
-- 12# 같은 모델의 중고차들의 합이 8000 이하 차 내림차순 목록(차량 수, 외관명, 합계)
SELECT
    COUNT(model) "대 수",
    model        "외관명",
    SUM(price)   "합계"
FROM
    stocked_cartbl
GROUP BY
    model
HAVING
    SUM(price) <= 8000
ORDER BY
    SUM(price) DESC;
        
-- 13# 같은 차 별로 가격순
SELECT
    RANK()
    OVER(PARTITION BY model
         ORDER BY
             price DESC
    )       "가격 순위",
    model   "외관명",
    price   "가격",
    trouble "파손여부"
FROM
    stocked_cartbl;
    
-- 14# 같은 차들의 중앙값
SELECT DISTINCT
    model                    "외관명",
    PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
    OVER(PARTITION BY model) "중앙값"
FROM
    stocked_cartbl
ORDER BY
    "중앙값";

-- 15# 외관명으로 정렬 후 중앙값과 비교한 차 가격
SELECT
    model                      "외관명",
    price                      "가격",
    p_year                     "출시년도",
    trouble                    "파손여부",
    price - ( PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
              OVER(PARTITION BY model) ) "가격 차"
FROM
    stocked_cartbl;
    
-- 16# 가격 백분율
SELECT
    model       "외관명",
    price       "가격",
    p_year      "출시년도",
    trouble     "파손여부",
    round(CUME_DIST()
          OVER(
        ORDER BY
            price
          ), 3) * 100 "백분율%"
FROM
    stocked_cartbl;