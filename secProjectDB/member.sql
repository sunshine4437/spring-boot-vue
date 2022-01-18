DROP TABLE s_member CASCADE CONSTRAINTS;

CREATE TABLE s_member (
    id         VARCHAR2(20) PRIMARY KEY,
    nickname   VARCHAR2(50) NOT NULL,
    password   VARCHAR2(30) NOT NULL,
    name       VARCHAR2(50) NOT NULL,
    tel        VARCHAR2(11) NOT NULL,
    zipcode    VARCHAR2(5) NOT NULL,
    address    VARCHAR2(80) NOT NULL,
    detailaddr VARCHAR2(50) NOT NULL,
    email      VARCHAR2(30),
    birth      VARCHAR2(10),
    gender     CHAR(1),
    point      NUMBER(10) DEFAULT 0,
    seller     CHAR(1) DEFAULT 0,    
    companyNO varchar2(20)
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0001',
    'tester0001',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0002',
    'tester0002',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '2층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0003',
    'tester0003',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '3층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0004',
    'tester0004',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '4층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0005',
    'tester0005',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '5층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0006',
    'tester0006',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '6층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0007',
    'tester0007',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '7층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0008',
    'tester0008',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '8층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr
) VALUES (
    'tester0009',
    'tester0009',
    'Asdqwe123',
    '테스터1',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '9층 1호'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr,
    seller,
    companyNO
) VALUES (
    'seller0001',
    '신세계몰',
    'Asdqwe123',
    '신세계몰',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 1호',
    1,
    '111-1111-1111-111'
);

INSERT INTO s_member (
    id,
    nickname,
    password,
    name,
    tel,
    zipcode,
    address,
    detailaddr,
    seller,
    companyNO
) VALUES (
    'seller0002',
    '롯데아이몰',
    'Asdqwe123',
    '셀러2',
    '01000000000',
    '06220',
    '서울 강남구 테헤란로 212',
    '1층 2호',
    1,
    '222-2222-2222-222'
);

COMMIT;

SELECT
    *
FROM
    s_member;