DROP TABLE s_basket CASCADE CONSTRAINTS;

CREATE TABLE s_basket (
    id        VARCHAR2(20),
    productno NUMBER(10),
    option1   VARCHAR2(100) NOT NULL,
    option2   VARCHAR2(100),
    amount    NUMBER(3) NOT NULL,
    delivery  NUMBER(5),
    CONSTRAINT fk_basmem FOREIGN KEY ( id )
        REFERENCES s_member ( id )
            ON DELETE CASCADE,
    CONSTRAINT fk_basprod FOREIGN KEY ( productno )
        REFERENCES s_product ( productno )
            ON DELETE CASCADE
);

INSERT INTO s_basket VALUES (
    'tester0004',
    1,
    '08.NB_MS327CPG',
    '230',
    1,
    0
);

COMMIT;

SELECT
    *
FROM
    s_basket;