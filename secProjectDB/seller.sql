DROP TABLE s_seller CASCADE CONSTRAINTS;

DROP SEQUENCE seller_seq;

CREATE TABLE s_seller (
    selleridx NUMBER(20) PRIMARY KEY,
    id        VARCHAR2(20),
    productno NUMBER(10),
    totalsell NUMBER(20),
    CONSTRAINT fk_sellmem FOREIGN KEY ( id )
        REFERENCES s_member ( id )
            ON DELETE CASCADE,
    CONSTRAINT fk_sellprod FOREIGN KEY ( productno )
        REFERENCES s_product ( productno )
            ON DELETE CASCADE
);

CREATE SEQUENCE seller_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    1,
    10000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    2,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    3,
    4000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    4,
    1200000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    5,
    1500000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    6,
    1050000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    7,
    500000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    8,
    3000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    9,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0001',
    10,
    2000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    11,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    12,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    13,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    14,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    15,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    16,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    17,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    18,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    19,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    20,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    21,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    22,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    23,
    1000000
);

INSERT INTO s_seller VALUES (
    seller_seq.NEXTVAL,
    'seller0002',
    24,
    1000000
);

COMMIT;

SELECT
    *
FROM
    s_seller;