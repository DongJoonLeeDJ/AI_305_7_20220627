-- 1. attendetbl에서 모든 열의 내용을 가져와라
SELECT * FROM attendetbl;
-- 2. gradeomrtbl에서 모든 열의 내용을 가져와라
select * from gradeomrtbl;
-- 3.  attendetbl에서 class 열을 가져오자
select class from attendetbl;
-- 4. attendetbl에서 class, attendename 열을 가져오자
select class, attendename from attendetbl;
-- 5. attendetbl에서 attendename, class 열을 가져오자. 열 이름의 순서는 원하는대로 바꿀 수 있음!
select attendename, class from attendetbl;
-- 6. 열 이름 별칭 지정. 별칭 혹은 중간에 공백 있을 시에는 큰 따옴표("")로 감싸주기. as는 붙여도 되고 생략 가능!
select class 학번, attendename 이름, attendename "학생 이름" from attendetbl;
-- 7. 20912825 학생과 20912213 학생의 부정행위 판별
select * FROM gradeomrtbl WHERE class=20912825 or class=20912213;
-- 8. attendetbl 학번 오름차순으로 정렬
select class, attendename from attendetbl order by class;
-- 9. attendetbl 이름 오름차순으로 정렬
select class, attendename from attendetbl order by attendename;
-- 10. 다음 시험 난이도 조정을 위한 이번 시험의 평점 확인
select avg(score) as "평균 점수" from gradeomrtbl;
-- 11. 채점 파일(gradeomrtbl)을 attendetbl에 매칭. 학번 오름차순으로 정렬. 59명 중에 45명분만 출력. 14명은 누락.
select attendetbl.class, attendename, score
from attendetbl
inner JOIN gradeomrtbl
on attendetbl.class=gradeomrtbl.class
order by class;
-- 12. 59명 분의 내용을 모두 출력하고 싶다. left outer join=left join
select attendetbl.class, attendename, score
from attendetbl
left outer join gradeomrtbl
on attendetbl.class=gradeomrtbl.class
order by class;
-- 13. 누락분을 알아보자! * is null
select attendetbl.class, attendename, score
from attendetbl
left outer join gradeomrtbl
on attendetbl.class=gradeomrtbl.class
where score is null
order by class;
-- 14. 2회차 시험 테이블 추가+