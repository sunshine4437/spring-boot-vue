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

COMMIT;

SELECT
    *
FROM
    s_basket;

SELECT
    s_basket.id,
    s_basket.productno,
    s_basket.option1,
    s_basket.option2,
    s_basket.amount,
    s_product.productname,
    s_product.imagename,
    s_product.price
FROM
    s_basket
    LEFT JOIN s_product ON s_basket.productno = s_product.productno
WHERE
    s_basket.id = 'tester0001';