DROP TABLE s_basket CASCADE CONSTRAINTS;

DROP SEQUENCE basket_seq;

CREATE TABLE s_basket (
    basketidx NUMBER(20) PRIMARY KEY,
    id        VARCHAR2(20),
    productno NUMBER(9),
    option1   VARCHAR2(100) NOT NULL,
    option2   VARCHAR2(100),
    amount    NUMBER(3) NOT NULL,
    CONSTRAINT fk_basmem FOREIGN KEY ( id )
        REFERENCES s_member ( id )
            ON DELETE CASCADE,
    CONSTRAINT fk_basprod FOREIGN KEY ( productno )
        REFERENCES s_product ( productno )
            ON DELETE CASCADE
);

CREATE SEQUENCE basket_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

INSERT INTO s_basket VALUES (
    basket_seq.NEXTVAL,
    'tester0001',
    1,
    '08.NB_MS327CPG',
    '230',
    1
);
insert into s_basket values (basket_seq.NEXTVAL,'tester0001',2,'08.NB_MS327CPG','230',2);
insert into s_basket values (basket_seq.NEXTVAL,'tester0001',3,'08.NB_MS327CPG','230',3);
insert into s_basket values (basket_seq.NEXTVAL,'tester0001',4,'08.NB_MS327CPG','230',4);
insert into s_basket values (basket_seq.NEXTVAL,'tester0001',5,'08.NB_MS327CPG','230',5);
insert into s_basket values (basket_seq.NEXTVAL,'tester0002',6,'08.NB_MS327CPG','230',3);
insert into s_basket values (basket_seq.NEXTVAL,'tester0002',7,'08.NB_MS327CPG','230',7);
insert into s_basket values (basket_seq.NEXTVAL,'tester0002',8,'08.NB_MS327CPG','230',8);
insert into s_basket values (basket_seq.NEXTVAL,'tester0002',9,'08.NB_MS327CPG','230',9);
insert into s_basket values (basket_seq.NEXTVAL,'tester0002',10,'08.NB_MS327CPG','230',10);
insert into s_basket values (basket_seq.NEXTVAL,'tester0002',11,'08.NB_MS327CPG','230',11);
insert into s_basket values (basket_seq.NEXTVAL,'tester0003',12,'08.NB_MS327CPG','230',12);
insert into s_basket values (basket_seq.NEXTVAL,'tester0003',13,'08.NB_MS327CPG','230',13);
insert into s_basket values (basket_seq.NEXTVAL,'tester0004',14,'08.NB_MS327CPG','230',14);
insert into s_basket values (basket_seq.NEXTVAL,'tester0004',15,'08.NB_MS327CPG','230',15);
insert into s_basket values (basket_seq.NEXTVAL,'tester0005',16,'08.NB_MS327CPG','230',16);
insert into s_basket values (basket_seq.NEXTVAL,'tester0005',17,'08.NB_MS327CPG','230',17);
insert into s_basket values (basket_seq.NEXTVAL,'tester0006',18,'08.NB_MS327CPG','230',18);
insert into s_basket values (basket_seq.NEXTVAL,'tester0001',19,'08.NB_MS327CPG','230',19);
insert into s_basket values (basket_seq.NEXTVAL,'tester0001',20,'08.NB_MS327CPG','230',20);
COMMIT;

SELECT
    *
FROM
    s_basket;

SELECT
    b.basketidx,
    b.id,
    b.productno,
    b.option1,
    b.option2,
    b.amount,
    p.productname,
    p.imagename,
    p.price
FROM
    s_basket  b
    LEFT JOIN s_product p ON b.productno = p.productno
WHERE
    b.id = 'tester0001';
    
    SELECT b.basketidx, b.id, b.productno, b.option1, b.option2, b.amount, p.productname, p.imagename, p.price*b.amount price, m.nickname
    FROM s_basket  b LEFT JOIN s_product p ON b.productno = p.productno right join s_member m on m.id = p.id WHERE b.id = 'tester0001' order by b.basketidx;