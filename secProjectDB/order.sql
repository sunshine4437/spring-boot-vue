DROP TABLE s_order CASCADE CONSTRAINTS;

CREATE TABLE s_order (
    id         VARCHAR2(20) NOT NULL,
    productno  NUMBER(10) NOT NULL,
    option     VARCHAR2(100) NOT NULL,
    delivery   NUMBER(5) NOT NULL,
    totalprice NUMBER(10) NOT NULL,
    orderdate  DATE DEFAULT sysdate,
    CONSTRAINT fk_ordmem FOREIGN KEY ( id )
        REFERENCES s_member ( id )
            ON DELETE CASCADE,
    CONSTRAINT fk_ordprod FOREIGN KEY ( productno )
        REFERENCES s_product ( productno )
            ON DELETE CASCADE
);

INSERT INTO s_order VALUES (
    'tester0006',
    1,
    '05.NB_MR530KA',
    0,
    73800,
    sysdate
);

COMMIT;

SELECT
    *
FROM
    s_order;