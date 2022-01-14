DROP TABLE s_product CASCADE CONSTRAINTS;

CREATE TABLE s_product (
    productno        NUMBER(9) PRIMARY KEY,
    productname      VARCHAR2(200) NOT NULL,
    imagename        VARCHAR2(50) NOT NULL,
    price            NUMBER(10) NOT NULL,
    option1          VARCHAR2(2000) NOT NULL,
    option2          VARCHAR2(2000),
    regdate          VARCHAR2(30),
    id               VARCHAR2(20) NOT NULL,
    detailimagename VARCHAR2(50),
    CONSTRAINT fk_prodmem FOREIGN KEY ( id )
        REFERENCES s_member ( id )
        on delete cascade
);

insert into s_product values (
1,'[뉴발란스] 남여공용 574/327/530 운동화 씨쏠트 문빔','1.jpg',
23800,'상품 번호;01.NB_CM997HCA;02.NB_CM997HCC;03.NB_ML574RC2;04.NB_MR530SG;05.NB_MR530KA;06.NB_MS327FE;07.NB_MS327LAB;08.NB_MS327CPG;09.NB_MS327LH1;10.NB_WS327KC;11.NB_MS327WE;12.NB_MS327BD;13.NB_MR530SH;14.NB_WS327LW;15.NB_MS327CLA;16.NB_ML574EVB;17.NB_ML574EVG;18.NB_ML574EVW;19.NB_ML574EVE',
'사이즈;225;230;235;240;245;250;255;260;265;270;275;280;285;290',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0001','productDetail01.jpg');
insert into s_product values(
2, '[닉스/카이아크만외]케이브랜즈 시즌오프 ~87%+25%쿠폰! 겨울다운/기모티/플리스외','2.jpg',10500,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
3, '[마인드브릿지]본사 단독연말세일! 정해인 신상/이월 겨울인기템','3.jpg',13000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
4, '컬럼비아 유니버시티 신년맞이 겨울 시즌 오프 SALE','4.jpg',16900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
5, '[어스앤뎀/유지아이지/케이스위스]남녀공용/패딩/맨투맨','5.jpg',11000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
6, '비트로 엄스톤(화이트/블랙) 발 볼 넓은 테니스화','6.jpg',155000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
7, '[슈망] 남녀공용 신발 스니커즈 슬립온 단화 운동화 러닝화 슬리퍼 모음전!','7.jpg',9900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
8, 'SOVO 겨울Best 여성부츠 앵클 롱 미들 삭스 구두 워커 로퍼 슬리퍼 스니커즈 정장 캐쥬얼','8.jpg',19900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
9, 'TOMS 남성용 Carlo 미드 터레인 스니커즈, 방수 토파즈 브라운','9.jpg',73960,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
10, '[솔로이스트] SACKDH06','10.jpg',72040,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
11, '[25%쿠폰][지오송지오 外] 홈쇼핑 BEST 100/겨울 클리어런스 역대급 득템찬스!','11.jpg',59000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
12, '로레알파리 한소희 헤어팩/오일/샴푸/컨디셔너/염색약','12.jpg',19900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
13, 'Razer Xbox 시리즈 X|S용 범용 고속 충전 스탠드 마그네틱 안전 충전','13.jpg',63170,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
14, '[코코블랑]예뻐지는코디/기모/데일리룩/데이트룩/패딩/팬츠/맨투맨/원피스','14.jpg',7900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
15, '[제이엘프]겨울인기/시즌오프 데일리룩/팬츠/니트/원피스/울자켓/패딩/어나더리즈/청순','15.jpg',16900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
16, '[기프티박스]코디맛집/기모/폴라/맨투맨/패딩/니트/원피스/팬츠/파자마','16.jpg',10000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
17, '[업타운홀릭]인기템99종!맨투맨/슬랙스/니트/가디건/트레이닝 외','17.jpg',18000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
18, '[리얼코코]대표데일리룩/데이트룩/기모/원피스/패딩/니트/맨투맨/데님','18.jpg',14900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
19, '[나크21] 사랑스러운 데이트룩/하객룩/니트/블라우스/팬츠/원피스~','19.jpg',12900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
20, '갤럭시 GALAX 지포스 RTX 3080 SG D6X 10GB','20.jpg',5000000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
21, '트렌디스타일 남성,공용 양털,패딩점퍼,패딩조끼,청자켓 모음','21.jpg',36900,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
22, '아이리버 BS-BT101 무선블루투스헤드폰 5.0 노이즈캔슬링 접이식 스마트폰 헤드셋','22.jpg',49000,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
23, '[20매+6]김태희 마스크 아이바나리 KF-AD 새부리형 대형 중형 6가지 색상','23.jpg',16980,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');
insert into s_product values(
24, '[시크루즈]50+30% 따뜻한 기모원피스/루즈핏 원피스/상하세트/트레이닝/롱티셔츠/니트/조거팬츠','24.jpg',9700,'옵션1','옵션2',to_char(sysdate,'yyyy.mm.dd hh24:mi'),'seller0002','productDetail01.jpg');


commit;

select * from s_product;