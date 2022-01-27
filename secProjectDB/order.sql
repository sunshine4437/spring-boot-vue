DROP TABLE s_order CASCADE CONSTRAINTS;

DROP SEQUENCE order_seq;

CREATE TABLE s_order (
    orderidx       NUMBER(20) PRIMARY KEY,
    id             VARCHAR2(20) NOT NULL,
    productno      NUMBER(9) NOT NULL,
    selectedoption VARCHAR2(100) NOT NULL,
    totalprice     NUMBER(10) NOT NULL,
    orderdate      DATE DEFAULT sysdate,
    state          VARCHAR2(20) DEFAULT '결제완료',
    ordermethod    VARCHAR2(40) NOT NULL,
    seller         VARCHAR2(40) NOT NULL,
    dname          VARCHAR2(50) NOT NULL,
    dtel           VARCHAR2(11) NOT NULL,
    dzipcode       VARCHAR2(5) NOT NULL,
    daddress       VARCHAR2(200) NOT NULL,
    ddetailaddr    VARCHAR2(50) NOT NULL,
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
    'tester0001',
    1,
    'a',
    3373800,
    '2022-01-20',
    '배송 완료',
    '무통장 입금',
    '신세계몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    1,
    'b',
    73800,
    '2022-01-25',
    '취소중',
    '카드',
    '신세계몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    2,
    'a',
    73800,
    '2022-01-10',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    2,
    'b',
    73800,
    '2021-01-10',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    3,
    'a',
    73800,
    sysdate,
    '배송중',
    '무통장 입금',
    '신세계몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    3,
    'b',
    73800,
    '2021-11-15',
    '취소 완료',
    '카드',
    '신세계몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    1,
    'a',
    73800,
    sysdate,
    '배송중',
    '휴대폰 결제',
    '신세계몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0001',
    14,
    'a',
    73800,
    sysdate,
    '결제 완료',
    '카드',
    '롯데아이몰',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0004',
    4,
    '2',
    1200000,
    '2021-04-19',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터4',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0005',
    5,
    '2',
    1500000,
    '2021-04-19',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터5',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0006',
    6,
    '2',
    1050000,
    '2021-04-19',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터6',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0007',
    7,
    '2',
    500000,
    '2021-04-19',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터7',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0008',
    8,
    '2',
    3000000,
    '2021-04-19',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터8',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0009',
    9,
    '2',
    1000000,
    '2021-04-19',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터9',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0004',
    10,
    '2',
    2000000,
    '2020-04-17',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터4',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0005',
    11,
    '2',
    100000,
    '2020-04-17',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터5',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0006',
    12,
    '2',
    200000,
    '2020-04-17',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터6',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0007',
    13,
    '2',
    300000,
    '2020-04-17',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터7',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0008',
    14,
    '2',
    250000,
    '2020-04-17',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터8',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0009',
    15,
    '2',
    430000,
    '2020-04-17',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터9',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0004',
    16,
    '2',
    1231500,
    '2021-10-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터4',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0005',
    17,
    '2',
    7500600,
    '2021-10-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터5',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0006',
    18,
    '2',
    3743400,
    '2021-10-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터6',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0007',
    19,
    '2',
    12300,
    '2021-10-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터7',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0008',
    20,
    '2',
    243400,
    '2021-10-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터8',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'tester0009',
    21,
    '2',
    123500,
    '2021-10-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터9',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'btester0002',
    22,
    '2',
    85000,
    '2021-12-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터2',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'ctester0003',
    23,
    '2',
    353000,
    '2021-12-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터3',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_order VALUES (
    order_seq.NEXTVAL,
    'ctester0003',
    24,
    '2',
    45600,
    '2021-12-23',
    '배송 완료',
    '카드',
    '신세계몰',
    '테스터3',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

COMMIT;

SELECT
    *
FROM
    s_order;
    
--select count(orderidx) from s_order where id = 'tester0001' and state in ('결제완료', '배송중', '취소 요청');
--select s_product.productno, s_product.imagename, sum(s_order.totalprice) tot from s_product left join s_order on s_product.productno = s_order.productno where sellerid = (select sellerid from s_product where productno = 1) and s_product.productno != 1 group by s_product.productno,s_product.imagename order by tot desc;
--SELECT * FROM s_order RIGHT OUTER JOIN s_member ON s_member.id = s_order.id LEFT OUTER JOIN s_product ON s_product.productno = s_order.productno WHERE s_product.id = 'seller0001';
--SELECT * FROM s_member, s_order, s_product WHERE s_member.id = s_order.id AND s_order.productno = s_product.productno AND s_product.sellerid = 'seller0001';
--Select s_order.orderidx, s_order.productno, s_order.selectedoption, s_order.totalprice, s_order.orderdate, s_order.state, s_product.productname, s_product.sellerid, s_product.imagename from s_order, s_product, s_member where s_order.id = 'tester0001' and s_order.state in ('결제 완료', '배송중', '배송 완료')
--Select s_member.nickname from s_product left join s_member on s_product.sellerid = s_member.id where s_product.productno = 1;
--Select s_order.orderidx, s_order.productno, s_order.selectedoption, s_order.totalprice, s_order.orderdate, s_order.state, s_order.seller, s_product.productname, s_product.imagename from s_order left join s_product on s_order.productno = s_product.productno where s_order.id = 'tester0001' and s_order.orderdate  >= TO_DATE('20210127', 'YYYYMMDD') and TO_CHAR(s_order.orderdate, 'YYYYMMDD') <= '20220127' and s_product.productname like '%%' and s_order.state in ('결제 완료', '배송중', '배송 완료') order by s_order.orderdate desc;