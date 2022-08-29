-- 생성자 Oracle SQL Developer Data Modeler 21.4.2.059.0838
--   위치:        2022-05-27 15:04:12 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



CREATE USER movie IDENTIFIED BY ACCOUNT UNLOCK ;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE movie.credittbl (
    user_id  VARCHAR2(10 BYTE) NOT NULL,
    pay_info VARCHAR2(15 BYTE) NOT NULL,
    card_co  VARCHAR2(12 BYTE),
    card_num VARCHAR2(15 BYTE),
    bank     VARCHAR2(12 BYTE),
    account  VARCHAR2(15 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

CREATE UNIQUE INDEX movie.credittbl_pk ON
    movie.credittbl (
        user_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE movie.credittbl
    ADD CONSTRAINT credittbl_pk PRIMARY KEY ( user_id )
        USING INDEX movie.credittbl_pk;

CREATE TABLE movie.favortbl (
    user_id        VARCHAR2(10 BYTE) NOT NULL,
    favor_category VARCHAR2(10 BYTE),
    favor_actor    VARCHAR2(30 BYTE),
    favor_director VARCHAR2(30 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

CREATE UNIQUE INDEX movie.favortbl_pk ON
    movie.favortbl (
        user_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE movie.favortbl
    ADD CONSTRAINT favortbl_pk PRIMARY KEY ( user_id )
        USING INDEX movie.favortbl_pk;

CREATE TABLE movie.movietbl 
    ( 
     MOVIE_ID       NUMBER (4) 
         CONSTRAINT BIN$4VRhS7OPSvW90ccP9qwL7g==$0 NOT NULL , 
     MOVIE_CATECORY VARCHAR2 (10 BYTE) , 
     MOVIE_TITLE    VARCHAR2 (30 BYTE) , 
     MOVIE_ACTOR    VARCHAR2 (30 BYTE) , 
     MOVIE_DIRECTOR VARCHAR2 (30 BYTE) , 
     PRICE          VARCHAR2 (8 BYTE) 
    ) 
        PCTFREE 10 
        PCTUSED 40 
        TABLESPACE USERS 
        LOGGING 
        STORAGE ( 
        INITIAL 65536 
        NEXT 1048576 
        PCTINCREASE 0 
        MINEXTENTS 1 
        MAXEXTENTS 2147483645 
        FREELISTS 1 
        FREELIST GROUPS 1 
        BUFFER_POOL DEFAULT 
    ) 
;
CREATE UNIQUE INDEX movie."BIN$zgViW4g2RJe9wJX3XwBoyg==$0" ON
    movie.movietbl (
        movie_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE movie.movietbl
    ADD CONSTRAINT "BIN$YxxiLTo4QXy7OboFjbWD6A==$0" PRIMARY KEY ( movie_id )
        USING INDEX movie."BIN$zgViW4g2RJe9wJX3XwBoyg==$0";

CREATE TABLE movie.ordertbl (
    order_num  VARCHAR2(15 BYTE) NOT NULL,
    user_id    VARCHAR2(10 BYTE) NOT NULL,
    movie_id   NUMBER(4) NOT NULL,
    price      VARCHAR2(10 BYTE),
    order_date DATE,
    pay_info   VARCHAR2(15 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

CREATE UNIQUE INDEX movie.ordertbl_pk1 ON
    movie.ordertbl (
        order_num
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE movie.ordertbl
    ADD CONSTRAINT ordertbl_pk PRIMARY KEY ( order_num )
        USING INDEX movie.ordertbl_pk1;

CREATE TABLE movie.usertbl (
    user_id   VARCHAR2(10 BYTE) NOT NULL,
    user_name NCHAR(3),
    birthyear NUMBER(4),
    mail      VARCHAR2(15 BYTE),
    order_num VARCHAR2(15 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT );

CREATE UNIQUE INDEX movie.table1_pk ON
    movie.usertbl (
        user_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE movie.usertbl
    ADD CONSTRAINT usertbl_pk PRIMARY KEY ( user_id )
        USING INDEX movie.table1_pk;

ALTER TABLE movie.favortbl
    ADD CONSTRAINT favortbl_fk1 FOREIGN KEY ( user_id )
        REFERENCES movie.usertbl ( user_id )
    NOT DEFERRABLE;

ALTER TABLE movie.ordertbl
    ADD CONSTRAINT ordertbl_fk1 FOREIGN KEY ( movie_id )
        REFERENCES movie.movietbl ( movie_id )
    NOT DEFERRABLE;

ALTER TABLE movie.ordertbl
    ADD CONSTRAINT ordertbl_fk2 FOREIGN KEY ( user_id )
        REFERENCES movie.usertbl ( user_id )
    NOT DEFERRABLE;

ALTER TABLE movie.ordertbl
    ADD CONSTRAINT ordertbl_fk3 FOREIGN KEY ( user_id )
        REFERENCES movie.credittbl ( user_id )
    NOT DEFERRABLE;



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             5
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
-- CREATE USER                              1
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
