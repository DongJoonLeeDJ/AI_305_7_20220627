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

-- 1# : �ŷ��� ���� ����
SELECT
    c.c_name   "����",
    insureance "����",
    c_phone    "��ȭ��ȣ",
    trade_date "�ŷ���",
    d_name     "������"
FROM
         customertbl c
    INNER JOIN tradetbl t ON c.c_name = t.c_name;
    
-- 2# : �ŷ��� ��, �ŷ��� ��, ���� ����
SELECT
    c.c_name   "����",
    insureance "����",
    c_phone    "��ȭ��ȣ",
    trade_date "�ŷ���",
    d_name     "������",
    model      "�ܰ���",
    price      "����"
FROM
         tradetbl t
    INNER JOIN customertbl    c ON c.c_name = t.c_name
    INNER JOIN stocked_cartbl s ON t.s_number = s.s_number;
    
-- 3# : ��Ʈ�� �� ���
-- non-match data detected (carinfo - usedcar TABLE : sm5)
SELECT
    brand   "ȸ���",
    s.model "�ܰ���",
    p_year  "��ó⵵",
    km      "����Ÿ�",
    price   "����"
FROM
    carinfotbl     c
    RIGHT OUTER JOIN stocked_cartbl s ON c.model = s.model
WHERE
    trouble IS NULL
ORDER BY
    price;
    
-- 4# : ��Ʈ�� ���� �� ���� ������ ���� ��� ��
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

-- 5# �԰�� �� ��
SELECT
    model    "�ܰ���",
    COUNT(*) "�԰� ��"
FROM
    stocked_cartbl
GROUP BY
    model
ORDER BY
    COUNT(*) DESC;
    
-- 6# ���� ���� ��ȸ
SELECT
    *
FROM
    dealertbl SAMPLE ( 20 );
        
-- 7# �ŷ��� �׸���� ��� ��
SELECT
    CAST(AVG(price) AS INT) "��հ�"
FROM
         stocked_cartbl s
    INNER JOIN tradetbl t ON s.s_number = t.s_number;
    
-- 8# �ŷ��� �׸���� ���� �� ���� ������ ���� ��� ���� ����
SELECT
    price "����",
    model "�ܰ���"
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

-- #9 : �������� ���޺��� �����ϰ� ���� ������ ������ �б� ���� �� ����
CREATE VIEW v_dealertbl AS
    SELECT
        *
    FROM
        dealertbl
    ORDER BY
        (
            CASE
                WHEN position = '���' THEN
                    1
                WHEN position = '�븮' THEN
                    2
                WHEN position = '����' THEN
                    3
                WHEN position = '����' THEN
                    4
                ELSE
                    5
            END
        ),
        position ASC,
        d_name ASC
WITH READ ONLY;

-- 10# �� ��ȸ
SELECT
    *
FROM
    v_dealertbl;
    
-- 11# ����� 2000 �̻�, 4�ν� �̻�, ��Ʈ��x �� �� ���
SELECT
    *
FROM
         stocked_cartbl s
    INNER JOIN carinfotbl c ON s.model = c.model
WHERE
        c.cc >= 2000
    AND c.boarding >= 4
    AND s.trouble IS NOT NULL;
    
-- 12# ���� ���� �߰������� ���� 8000 ���� �� �������� ���(���� ��, �ܰ���, �հ�)
SELECT
    COUNT(model) "�� ��",
    model        "�ܰ���",
    SUM(price)   "�հ�"
FROM
    stocked_cartbl
GROUP BY
    model
HAVING
    SUM(price) <= 8000
ORDER BY
    SUM(price) DESC;
        
-- 13# ���� �� ���� ���ݼ�
SELECT
    RANK()
    OVER(PARTITION BY model
         ORDER BY
             price DESC
    )       "���� ����",
    model   "�ܰ���",
    price   "����",
    trouble "�ļտ���"
FROM
    stocked_cartbl;
    
-- 14# ���� ������ �߾Ӱ�
SELECT DISTINCT
    model                    "�ܰ���",
    PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
    OVER(PARTITION BY model) "�߾Ӱ�"
FROM
    stocked_cartbl
ORDER BY
    "�߾Ӱ�";

-- 15# �ܰ������� ���� �� �߾Ӱ��� ���� �� ����
SELECT
    model                      "�ܰ���",
    price                      "����",
    p_year                     "��ó⵵",
    trouble                    "�ļտ���",
    price - ( PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY price)
              OVER(PARTITION BY model) ) "���� ��"
FROM
    stocked_cartbl;
    
-- 16# ���� �����
SELECT
    model       "�ܰ���",
    price       "����",
    p_year      "��ó⵵",
    trouble     "�ļտ���",
    round(CUME_DIST()
          OVER(
        ORDER BY
            price
          ), 3) * 100 "�����%"
FROM
    stocked_cartbl;