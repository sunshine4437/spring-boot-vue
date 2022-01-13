DROP TABLE s_seller CASCADE CONSTRAINTS;

CREATE TABLE s_seller (
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

INSERT INTO s_seller VALUES (
    'seller0001',
    1,
    0
);

INSERT INTO s_seller VALUES (
    'seller0001',
    2,
    0
);

COMMIT;

SELECT
    *
FROM
    s_seller;