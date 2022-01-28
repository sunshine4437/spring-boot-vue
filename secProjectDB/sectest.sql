DROP TABLE test_role;

DROP TABLE mymember;

DROP SEQUENCE test_seq;

CREATE TABLE mymember (
    id       NUMBER(9) PRIMARY KEY,
    username VARCHAR2(50) UNIQUE,
    password VARCHAR2(100) NOT NULL,
    enabled  CHAR(1) DEFAULT 1
);

CREATE SEQUENCE test_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

DROP SEQUENCE test_role_seq;

CREATE TABLE test_role (
    rid      NUMBER(9) PRIMARY KEY,
    user_id NUMBER(9),
    role    VARCHAR2(100),
    CONSTRAINT id_fk FOREIGN KEY ( user_id )
        REFERENCES mymember ( id )
);

CREATE SEQUENCE test_role_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

insert into mymember values(test_seq.nextval, 'test1', 'pw1',1);
insert into mymember values(test_seq.nextval, 'test2', 'pw2',1);
insert into mymember values(test_seq.nextval, 'test3', 'pw3',1);

insert into test_role values(test_role_seq.nextval, 1, 'USER');
insert into test_role values(test_role_seq.nextval, 1, 'SELLER');
insert into test_role values(test_role_seq.nextval, 2, 'USER');
insert into test_role values(test_role_seq.nextval, 3, 'USER');

commit;

select * from mymember;
select * from test_role;
select mymember.username, test_role.role from mymember left join test_role on mymember.id = test_role.user_id;