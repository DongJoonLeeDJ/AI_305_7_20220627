CREATE TABLE studenttbl (
    studentnumber INTEGER NOT NULL,
    studentname   NCHAR(4) NOT NULL,
    studentmajor  NCHAR(10) NOT NULL,
    studentyear   INTEGER NOT NULL
);

ALTER TABLE studenttbl ADD CONSTRAINT student_pk PRIMARY KEY ( studentnumber );

insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21021858,'�ݵ���','��������к�',3);
insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21427758,'�����','�濵�а�',2);
insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21327758,'Ź����','���������к�',2);
insert into studenttbl(studentnumber,studentname,studentmajor,studentyear)
values(21727758,'�ǳ���','����������к�',1);


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
insert into class(classnumber,classname,classtime,professorname,classroom)values(011,'�濵���� ����','9:00','�����','A306');
insert into class(classnumber,classname,classtime,professorname,classroom)values(012,'�Žð�����','14:00','���±�','B402');
insert into class(classnumber,classname,classtime,professorname,classroom)values(013,'������� ����','18:00','�谩��','C106');
insert into class(classnumber,classname,classtime,professorname,classroom)values(014,'�мǵ������� ����','10:30','�����','D210');
ALTER TABLE class ADD CONSTRAINT class_pk PRIMARY KEY ( classnumber );

CREATE TABLE professortbl (
    professornumber INTEGER NOT NULL,
    professorname   NCHAR(4) NOT NULL,
    professormajor  NCHAR(10) NOT NULL
);

select * from professortbl;
insert into professortbl(professornumber,professorname,professormajor)
values(19631114,'�����','�濵������');
insert into professortbl(professornumber,professorname,professormajor)
values(19653118,'�����','�мǵ���������');
insert into professortbl(professornumber,professorname,professormajor)
values(19730417,'�谩��','���������');
insert into professortbl(professornumber,professorname,professormajor)
values(19770514,'���±�','����������');

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
insert into subject(classname,retake,classgrades)values('�濵���� ����','����',3);
insert into subject(classname,retake,classgrades)values('�Žð�����','����',3);
insert into subject(classname,retake,classgrades)values('������� ����','����',3);
insert into subject(classname,retake,classgrades)values('�мǵ������� ����','�Ұ���',2);

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

