백업 및 복구

1) export(백업)

## EXPORT (내 파일 DUMP파일로 저정하기)
 준비물 : C드라이브 밑에 파일하나 생성
(여기선 파일이름:backup , c드라이브에 바로 export하면 권한오류생기니까 걍 따라하셈)

파일이름:backup

<콘솔창> % 일반 그냥 콘솔창 %
cd c://backup
exp 저장할계정명/저장할계정비밀번호 file=원하는파일이름.dmp  (ex. exp c##scott/tiger file=backup.dmp)



2) import(적용)
import
<콘솔창> % sql 나와서 일반 그냥 콘솔창 %
cd c://
imp 계정명/비밀번호 file=파일명.dmp full=y

(imp c##scott/tiger file=mybackup.dmp full=y)


 