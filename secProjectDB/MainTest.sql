drop table mytable;

CREATE TABLE mytable(
   image VARCHAR(50) NOT NULL PRIMARY KEY
  ,name  VARCHAR(500) NOT NULL
  ,link  VARCHAR(50) NOT NULL
  ,price INTEGER  NOT NULL
);
INSERT INTO mytable(image,name,link,price) VALUES ('1.jpg','[뉴발란스] 남여공용 574/327/530 운동화 씨쏠트 문빔','/productDetail/1',73800);
INSERT INTO mytable(image,name,link,price) VALUES ('2.jpg','[닉스/카이아크만외]케이브랜즈 시즌오프 ~87%+25%쿠폰! 겨울다운/기모티/플리스외','/productDetail/2',10500);
INSERT INTO mytable(image,name,link,price) VALUES ('3.jpg','[마인드브릿지]본사 단독연말세일! 정해인 신상/이월 겨울인기템','/productDetail/3',13000);
INSERT INTO mytable(image,name,link,price) VALUES ('4.jpg','컬럼비아 유니버시티 신년맞이 겨울 시즌 오프 SALE','/productDetail/4',16900);
INSERT INTO mytable(image,name,link,price) VALUES ('5.jpg','[어스앤뎀/유지아이지/케이스위스]남녀공용/패딩/맨투맨','/productDetail/5',11000);
INSERT INTO mytable(image,name,link,price) VALUES ('6.jpg','비트로 엄스톤(화이트/블랙) 발 볼 넓은 테니스화','/productDetail/6',155000);
INSERT INTO mytable(image,name,link,price) VALUES ('7.jpg','[슈망] 남녀공용 신발 스니커즈 슬립온 단화 운동화 러닝화 슬리퍼 모음전!','/productDetail/7',9900);
INSERT INTO mytable(image,name,link,price) VALUES ('8.jpg','SOVO 겨울Best 여성부츠 앵클 롱 미들 삭스 구두 워커 로퍼 슬리퍼 스니커즈 정장 캐쥬얼','/productDetail/8',19900);
INSERT INTO mytable(image,name,link,price) VALUES ('9.jpg','TOMS 남성용 Carlo 미드 터레인 스니커즈, 방수 토파즈 브라운','/productDetail/9',73960);
INSERT INTO mytable(image,name,link,price) VALUES ('10.jpg','[솔로이스트] SACKDH06','/productDetail/10',72040);
INSERT INTO mytable(image,name,link,price) VALUES ('11.jpg','[25%쿠폰][지오송지오 外] 홈쇼핑 BEST 100/겨울 클리어런스 역대급 득템찬스!','/productDetail/11',59000);
INSERT INTO mytable(image,name,link,price) VALUES ('12.jpg','로레알파리 한소희 헤어팩/오일/샴푸/컨디셔너/염색약','/productDetail/12',19900);
INSERT INTO mytable(image,name,link,price) VALUES ('13.jpg','Razer Xbox 시리즈 X|S용 범용 고속 충전 스탠드 마그네틱 안전 충전','/productDetail/13',63170);
INSERT INTO mytable(image,name,link,price) VALUES ('14.jpg','[코코블랑]예뻐지는코디/기모/데일리룩/데이트룩/패딩/팬츠/맨투맨/원피스','/productDetail/14',7900);
INSERT INTO mytable(image,name,link,price) VALUES ('15.jpg','[제이엘프]겨울인기/시즌오프 데일리룩/팬츠/니트/원피스/울자켓/패딩/어나더리즈/청순','/productDetail/15',16900);
INSERT INTO mytable(image,name,link,price) VALUES ('16.jpg','[기프티박스]코디맛집/기모/폴라/맨투맨/패딩/니트/원피스/팬츠/파자마','/productDetail/16',10000);
INSERT INTO mytable(image,name,link,price) VALUES ('17.jpg','[업타운홀릭]인기템99종!맨투맨/슬랙스/니트/가디건/트레이닝 외','/productDetail/17',18000);
INSERT INTO mytable(image,name,link,price) VALUES ('18.jpg','[리얼코코]대표데일리룩/데이트룩/기모/원피스/패딩/니트/맨투맨/데님','/productDetail/18',14900);
INSERT INTO mytable(image,name,link,price) VALUES ('19.jpg','[나크21] 사랑스러운 데이트룩/하객룩/니트/블라우스/팬츠/원피스~','/productDetail/19',12900);
INSERT INTO mytable(image,name,link,price) VALUES ('20.jpg','갤럭시 GALAX 지포스 RTX 3080 SG D6X 10GB','/productDetail/20',5000000);
INSERT INTO mytable(image,name,link,price) VALUES ('21.jpg','트렌디스타일 남성,공용 양털,패딩점퍼,패딩조끼,청자켓 모음','/productDetail/21',36900);
INSERT INTO mytable(image,name,link,price) VALUES ('22.jpg','아이리버 BS-BT101 무선블루투스헤드폰 5.0 노이즈캔슬링 접이식 스마트폰 헤드셋','/productDetail/22',49000);
INSERT INTO mytable(image,name,link,price) VALUES ('23.jpg','[20매+6]김태희 마스크 아이바나리 KF-AD 새부리형 대형 중형 6가지 색상','/productDetail/23',16980);
INSERT INTO mytable(image,name,link,price) VALUES ('24.jpg','[시크루즈]50+30% 따뜻한 기모원피스/루즈핏 원피스/상하세트/트레이닝/롱티셔츠/니트/조거팬츠','/productDetail/24',9700);

select * from mytable;

commit;
