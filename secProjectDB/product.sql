DROP TABLE s_product CASCADE CONSTRAINTS;

DROP SEQUENCE prod_seq;

CREATE TABLE s_product (
    productno       NUMBER(9) PRIMARY KEY,
    productname     VARCHAR2(200) NOT NULL,
    imagename       VARCHAR2(50) NOT NULL,
    price           NUMBER(10) NOT NULL,
    option1         VARCHAR2(2000) NOT NULL,
    option2         VARCHAR2(2000),
    regdate         VARCHAR2(30),
    id              VARCHAR2(20) NOT NULL,
    detailimagename VARCHAR2(50),
    CONSTRAINT fk_prodmem FOREIGN KEY ( id )
        REFERENCES s_member ( id )
            ON DELETE CASCADE
);

CREATE SEQUENCE prod_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999 NOCYCLE NOCACHE;

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[���߶���] �������� 574/327/530 �ȭ ����Ʈ ����',
    '1.jpg',
    23800,
    '��ǰ ��ȣ;01.NB_CM997HCA;02.NB_CM997HCC;03.NB_ML574RC2;04.NB_MR530SG;05.NB_MR530KA;06.NB_MS327FE;07.NB_MS327LAB;08.NB_MS327CPG;09.NB_MS327LH1;10.NB_WS327KC;11.NB_MS327WE;12.NB_MS327BD;13.NB_MR530SH;14.NB_WS327LW;15.NB_MS327CLA;16.NB_ML574EVB;17.NB_ML574EVG;18.NB_ML574EVW;19.NB_ML574EVE',
    '������;225;230;235;240;245;250;255;260;265;270;275;280;285;290',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[�н�/ī�̾�ũ����]���̺귣�� ������� ~87%+25%����! �ܿ�ٿ�/���Ƽ/�ø�����',
    '2.jpg',
    10500,
    '�ɼ�1;1;2;3;4',
    '�ɼ�2;a;s;d;f',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[���ε�긴��]���� �ܵ���������! ������ �Ż�/�̿� �ܿ��α���',
    '3.jpg',
    13000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '�÷���� ���Ϲ���Ƽ �ų���� �ܿ� ���� ���� SALE',
    '4.jpg',
    16900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[��ص�/����������/���̽�����]�������/�е�/������',
    '5.jpg',
    11000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '��Ʈ�� ������(ȭ��Ʈ/����) �� �� ���� �״Ͻ�ȭ',
    '6.jpg',
    155000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[����] ������� �Ź� ����Ŀ�� ������ ��ȭ �ȭ ����ȭ ������ ������!',
    '7.jpg',
    9900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'SOVO �ܿ�Best �������� ��Ŭ �� �̵� �轺 ���� ��Ŀ ���� ������ ����Ŀ�� ���� ĳ���',
    '8.jpg',
    19900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'TOMS ������ Carlo �̵� �ͷ��� ����Ŀ��, ��� ������ ����',
    '9.jpg',
    73960,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[�ַ��̽�Ʈ] SACKDH06',
    '10.jpg',
    72040,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0001',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[25%����][���������� ��] Ȩ���� BEST 100/�ܿ� Ŭ����� ����� ��������!',
    '11.jpg',
    59000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '�η����ĸ� �Ѽ��� �����/����/��Ǫ/����ų�/������',
    '12.jpg',
    19900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'Razer Xbox �ø��� X|S�� ���� ���� ���� ���ĵ� ���׳�ƽ ���� ����',
    '13.jpg',
    63170,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[���ں���]���������ڵ�/���/���ϸ���/����Ʈ��/�е�/����/������/���ǽ�',
    '14.jpg',
    7900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[���̿���]�ܿ��α�/������� ���ϸ���/����/��Ʈ/���ǽ�/������/�е�/�������/û��',
    '15.jpg',
    16900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[����Ƽ�ڽ�]�ڵ����/���/����/������/�е�/��Ʈ/���ǽ�/����/���ڸ�',
    '16.jpg',
    10000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[��Ÿ��Ȧ��]�α���99��!������/������/��Ʈ/�����/Ʈ���̴� ��',
    '17.jpg',
    18000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[��������]��ǥ���ϸ���/����Ʈ��/���/���ǽ�/�е�/��Ʈ/������/����',
    '18.jpg',
    14900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[��ũ21] ��������� ����Ʈ��/�ϰ���/��Ʈ/����콺/����/���ǽ�~',
    '19.jpg',
    12900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '������ GALAX ������ RTX 3080 SG D6X 10GB',
    '20.jpg',
    5000000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    'Ʈ����Ÿ�� ����,���� ����,�е�����,�е�����,û���� ����',
    '21.jpg',
    36900,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '���̸��� BS-BT101 ����������������� 5.0 ������ĵ���� ���̽� ����Ʈ�� ����',
    '22.jpg',
    49000,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[20��+6]������ ����ũ ���̹ٳ��� KF-AD ���θ��� ���� ���� 6���� ����',
    '23.jpg',
    16980,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

INSERT INTO s_product VALUES (
    prod_seq.NEXTVAL,
    '[��ũ����]50+30% ������ �����ǽ�/������ ���ǽ�/���ϼ�Ʈ/Ʈ���̴�/��Ƽ����/��Ʈ/��������',
    '24.jpg',
    9700,
    '�ɼ�1',
    '�ɼ�2',
    to_char(
        sysdate, 'yyyy.mm.dd hh24:mi'
    ),
    'seller0002',
    'productDetail01.jpg'
);

COMMIT;

SELECT
    *
FROM
    s_product;

SELECT
    imagename,
    productname,
    productno,
    price
FROM
    s_product;
    
--select prod_seq.nextval from dual;

