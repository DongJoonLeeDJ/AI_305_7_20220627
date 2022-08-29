-- 생성자 Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   위치:        2022-05-26 14:51:29 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE class (
    classnumber                  INTEGER NOT NULL,
    classname                    NCHAR(10),
    classtime                    VARCHAR2(6),
    professorname                NCHAR(4),
    classroom                    VARCHAR2(6),
    professortbl_professornumber INTEGER NOT NULL,
    registration_studentnumber   INTEGER NOT NULL
);

ALTER TABLE class ADD CONSTRAINT class_pk PRIMARY KEY ( classnumber );

CREATE TABLE professortbl (
    professornumber INTEGER NOT NULL,
    professorname   NCHAR(4) NOT NULL,
    professormajor  NCHAR(10) NOT NULL
);

ALTER TABLE professortbl ADD CONSTRAINT professortbl_pk PRIMARY KEY ( professornumber );

CREATE TABLE registration (
    studentnumber            INTEGER NOT NULL,
    classnumber              INTEGER,
    studenttbl_studentnumber INTEGER NOT NULL
);

ALTER TABLE registration ADD CONSTRAINT registration_pk PRIMARY KEY ( studentnumber );

CREATE TABLE studenttbl (
    studentnumber INTEGER NOT NULL,
    studentname   NCHAR(4) NOT NULL,
    studentmajor  NCHAR(10) NOT NULL,
    studentyear   INTEGER NOT NULL
);

ALTER TABLE studenttbl ADD CONSTRAINT student_pk PRIMARY KEY ( studentnumber );

CREATE TABLE subject (
    classname         NCHAR(10) NOT NULL,
    retake            NCHAR(3),
    classgrades       INTEGER,
    class_classnumber INTEGER NOT NULL
);

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



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
