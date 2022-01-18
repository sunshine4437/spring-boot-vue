DROP TABLE s_order CASCADE CONSTRAINTS;

DROP SEQUENCE order_seq;

CREATE TABLE s_order (
    orderidx       NUMBER(20) PRIMARY KEY,
    id             VARCHAR2(20) NOT NULL,
    productno      NUMBER(9) NOT NULL,
    selectedoption VARCHAR2(100) NOT NULL,
    delivery       NUMBER(5) NOT NULL,
    totalprice     NUMBER(10) NOT NULL,
    orderdate      DATE DEFAULT sysdate,
    CONSTRAINT fk_ordmem FOREIGN KEY ( id )
        REFERENCES s_member ( id )
            ON DELETE CASCADE,
    CONSTRAINT fk_ordprod FOREIGN KEY ( productno )
        REFERENCES s_product ( productno )
            ON DELETE CASCADE
);

CREATE SEQUENCE order_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0006',
    1,
    '05.NB_MR530KA',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    1,
    'a',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    1,
    'b',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    2,
    'a',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    2,
    'b',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    3,
    'a',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    3,
    'b',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    1,
    'a',
    0,
    73800,
    sysdate
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    15,
    'a',
    0,
    73800,
    sysdate
);

COMMIT;

SELECT
    productno
FROM
    s_product
WHERE
    id = 'seller0001';

SELECT
    id
FROM
    s_order
WHERE
    productno IN (
        SELECT
            productno
        FROM
            s_product
        WHERE
            id = 'seller0001'
    );

SELECT
    m.id,
    m.address,
    m.detailaddr,
    m.tel,
    o.productno,
    o.selectedoption,
    o.orderdate,
    p.productname
FROM
    s_member  m,
    s_order   o,
    s_product p
WHERE
    m.id IN (
        SELECT
            id
        FROM
            s_order
        WHERE
            productno IN (
                SELECT
                    productno
                FROM
                    s_product
                WHERE
                    id = 'seller0001'
            )
    )
    AND m.id = o.id
    AND o.productno = p.productno
ORDER BY
    o.productno;

SELECT
    *
FROM
    s_member right
    JOIN s_order ON s_member.id = s_order.id;

SELECT
    id
FROM
    s_order
WHERE
    productno IN (
        SELECT
            productno
        FROM
            s_product
        WHERE
            id = 'seller0002'
    );

SELECT
    *
FROM
    s_member,
    s_order,
    s_product
WHERE
    s_member.id = s_order.id
    AND s_order.productno = s_product.productno
    AND s_product.id = 'seller0001';