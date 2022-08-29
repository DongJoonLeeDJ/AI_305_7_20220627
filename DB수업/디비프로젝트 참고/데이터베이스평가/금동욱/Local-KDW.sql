CREATE TABLE studenttbl (
    studentnumber INTEGER NOT NULL,
    studentname   NCHAR(4) NOT NULL,
    studentmajor  NCHAR(10) NOT NULL,
    studentyear   INTEGER NOT NULL
);

ALTER TABLE studenttbl ADD CONSTRAINT student_pk PRIMARY KEY ( studentnumber );

insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21021858,'금동욱','국제통상학부',3);
insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21427758,'김승현','경영학과',2);
insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21327758,'탁희재','경제금육학부',2);
insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21727758,'권나라','산업디자인학부',1);


select * from studenttbl;

CREATE TABLE class (
    classnumber                  INTEGER NOT NULL,
    classname                    NCHAR(10),
    classtime                    VARCHAR2(6),
    professorname                NCHAR(4),
    classroom                    VARCHAR2(15),
    professortbl_professornumber INTEGER NOT NULL,
    registration_studentnumber   INTEGER NOT NULL
);

select* from class;
insert into class(classnumber,classname,classtime,professorname,classroom)values(011,'경영학의 이해','9:00','김범수','A306');
insert into class(classnumber,classname,classtime,professorname,classroom)values(012,'거시경제학','14:00','박태규','B402');
insert into class(classnumber,classname,classtime,professorname,classroom)values(013,'통계학의 이해','18:00','김갑수','C106');
insert into class(classnumber,classname,classtime,professorname,classroom)values(014,'패션디자인의 역사','10:30','임재범','D210');
ALTER TABLE class ADD CONSTRAINT class_pk PRIMARY KEY ( classnumber );

CREATE TABLE professortbl (
    professornumber INTEGER NOT NULL,
    professorname   NCHAR(4) NOT NULL,
    professormajor  NCHAR(10) NOT NULL
);

select * from professortbl;
insert into professortbl(professornumber,professorname,professormajor)
values(19631114,'김범수','경영학전공');
insert into professortbl(professornumber,professorname,professormajor)
values(19653118,'임재범','패션디자인전공');
insert into professortbl(professornumber,professorname,professormajor)
values(19730417,'김갑수','통계학전공');
insert into professortbl(professornumber,professorname,professormajor)
values(19770514,'박태규','경제학전공');

ALTER TABLE professortbl ADD CONSTRAINT professortbl_pk PRIMARY KEY ( professornumber );


CREATE TABLE registration (
    studentnumber            INTEGER NOT NULL,
    classnumber              INTEGER NOT NULL,
    studenttbl_studentnumber INTEGER NOT NULL
);

insert into registration(studentnumber,classnumber)values(21021858,011);
insert into registration(studentnumber,classnumber)values(21427758,012);
insert into registration(studentnumber,classnumber)values(21327758,013);
insert into registration(studentnumber,classnumber)values(21727758,014);

select * from registration;

ALTER TABLE registration ADD CONSTRAINT registration_pk PRIMARY KEY ( studentnumber );

CREATE TABLE subject (
    classname         NCHAR(10) NOT NULL,
    retake            NCHAR(3),
    classgrades       INTEGER,
    class_classnumber INTEGER NOT NULL
);

select * from subject;
insert into subject(classname,retake,classgrades)values('경영학의 이해','가능',3);
insert into subject(classname,retake,classgrades)values('거시경제학','가능',3);
insert into subject(classname,retake,classgrades)values('통계학의 이해','가능',3);
insert into subject(classname,retake,classgrades)values('패션디자인의 역사','불가능',2);

ALTER TABLE subject ADD CONSTRAINT subject_pk PRIMARY KEY ( classname );

ALTER TABLE class
    ADD CONSTRAINT class_professortbl_fk FOREIGN KEY ( professortbl_professornumber )
        REFERENCES professortbl ( professornumber );

ALTER TABLE class
    ADD CONSTRAINT class_registration_fk FOREIGN KEY ( registration_studentnumber )
        REFERENCES registration ( studentnumber );

ALTER TABLE registration
    ADD CONSTRAINT registration_studenttbl_fk FOREIGN KEY ( studenttbl_studentnumber )
        REFERENCES studenttbl ( studentnumber );

ALTER TABLE subject
    ADD CONSTRAINT subject_class_fk FOREIGN KEY ( class_classnumber )
        REFERENCES class ( classnumber );

