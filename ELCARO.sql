--------------------------------------------------------
--  ������ ������ - ������-7��-03-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACCOUNT_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."ACCOUNT_TB" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(500 BYTE), 
	"NICKNAME" VARCHAR2(30 CHAR), 
	"ANI" NUMBER, 
	"MBTI" NUMBER, 
	"GENDER" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."ID" IS 'ȸ�� ���̵�';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."PASSWORD" IS '��й�ȣ';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."NICKNAME" IS '�г��� ';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."ANI" IS '��';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."MBTI" IS 'mbti';
   COMMENT ON COLUMN "ELCARO"."ACCOUNT_TB"."GENDER" IS '����';
   COMMENT ON TABLE "ELCARO"."ACCOUNT_TB"  IS 'ȸ�� ���̺�';
--------------------------------------------------------
--  DDL for Table ANI_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."ANI_TB" 
   (	"ANI" NUMBER, 
	"ANI_NAME" VARCHAR2(10 BYTE), 
	"IMG_SRC" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."ANI_TB"."ANI" IS '��';
   COMMENT ON COLUMN "ELCARO"."ANI_TB"."ANI_NAME" IS '���̸�';
   COMMENT ON COLUMN "ELCARO"."ANI_TB"."IMG_SRC" IS '�̹��� ���';
   COMMENT ON TABLE "ELCARO"."ANI_TB"  IS '�����̺�';
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "ELCARO"."BOARD" 
   (	"SEQ" NUMBER(8,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENTS" CLOB, 
	"DIV" VARCHAR2(2 BYTE), 
	"READ_CNT" NUMBER(8,0) DEFAULT 0, 
	"REG_DT" DATE DEFAULT SYSDATE, 
	"REG_ID" VARCHAR2(20 BYTE), 
	"MOD_DT" DATE DEFAULT SYSDATE, 
	"MOD_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENTS") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "ELCARO"."BOARD"."SEQ" IS '����';
   COMMENT ON COLUMN "ELCARO"."BOARD"."TITLE" IS '����';
   COMMENT ON COLUMN "ELCARO"."BOARD"."CONTENTS" IS '����';
   COMMENT ON COLUMN "ELCARO"."BOARD"."DIV" IS '����';
   COMMENT ON COLUMN "ELCARO"."BOARD"."READ_CNT" IS '��ȸ��';
   COMMENT ON COLUMN "ELCARO"."BOARD"."REG_DT" IS '�����';
   COMMENT ON COLUMN "ELCARO"."BOARD"."REG_ID" IS '�����';
   COMMENT ON COLUMN "ELCARO"."BOARD"."MOD_DT" IS '������';
   COMMENT ON COLUMN "ELCARO"."BOARD"."MOD_ID" IS '������';
   COMMENT ON TABLE "ELCARO"."BOARD"  IS 'Ŀ�´�Ƽ';
--------------------------------------------------------
--  DDL for Table LUCK_TEXT_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."LUCK_TEXT_TB" 
   (	"SEQ" NUMBER, 
	"LUCK_TY" NUMBER, 
	"LUCK" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."LUCK_TEXT_TB"."SEQ" IS '��������';
   COMMENT ON COLUMN "ELCARO"."LUCK_TEXT_TB"."LUCK_TY" IS '� ���� �ĺ���';
   COMMENT ON COLUMN "ELCARO"."LUCK_TEXT_TB"."LUCK" IS '�����';
   COMMENT ON TABLE "ELCARO"."LUCK_TEXT_TB"  IS '� ���̺�';
--------------------------------------------------------
--  DDL for Table MBTI_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."MBTI_TB" 
   (	"MBTI" NUMBER, 
	"MBTI_TYPE" VARCHAR2(4 BYTE), 
	"IMG_SRC" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."MBTI_TB"."MBTI" IS 'mbti';
   COMMENT ON COLUMN "ELCARO"."MBTI_TB"."MBTI_TYPE" IS '����';
   COMMENT ON COLUMN "ELCARO"."MBTI_TB"."IMG_SRC" IS '�̹��� ���';
   COMMENT ON TABLE "ELCARO"."MBTI_TB"  IS 'mbti���̺�';
--------------------------------------------------------
--  DDL for Table RESULT_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."RESULT_TB" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NICK" VARCHAR2(30 BYTE), 
	"MBTI_SRC" VARCHAR2(200 BYTE), 
	"ANI_SRC" VARCHAR2(200 BYTE), 
	"LUCK10" VARCHAR2(4000 BYTE), 
	"LUCK20" VARCHAR2(4000 BYTE), 
	"LUCK30" VARCHAR2(4000 BYTE), 
	"LUCK40" VARCHAR2(4000 BYTE), 
	"LUCK50" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."ID" IS 'ȸ�� ���̵�';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."NICK" IS '�г���';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."MBTI_SRC" IS 'mbti�̹��� ���';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."ANI_SRC" IS '���� �̹������';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK10" IS '�10�� ����';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK20" IS '�20������';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK30" IS '� 30������ ';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK40" IS '� 40������';
   COMMENT ON COLUMN "ELCARO"."RESULT_TB"."LUCK50" IS '� 50������';
   COMMENT ON TABLE "ELCARO"."RESULT_TB"  IS '����������̺�';
--------------------------------------------------------
--  DDL for Table URL_TB
--------------------------------------------------------

  CREATE TABLE "ELCARO"."URL_TB" 
   (	"SEQ" NUMBER, 
	"RESULT_DATE" DATE, 
	"URL" VARCHAR2(1000 BYTE), 
	"ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ELCARO"."URL_TB"."SEQ" IS '������';
   COMMENT ON COLUMN "ELCARO"."URL_TB"."RESULT_DATE" IS '�����¥';
   COMMENT ON COLUMN "ELCARO"."URL_TB"."URL" IS '����ּ�';
   COMMENT ON COLUMN "ELCARO"."URL_TB"."ID" IS 'ȸ�� ���̵�';
   COMMENT ON TABLE "ELCARO"."URL_TB"  IS 'url ���̺�';
REM INSERTING into ELCARO.ACCOUNT_TB
SET DEFINE OFF;
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('sh','gptjd123!','�������� 1��',5,16,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('ccjj1002','123123','ccjj',1,1,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('mj','mj','�����̴���',2,5,'F');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('space','qwe123!@#','�����̽�x',5,5,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('abpd','asd123!@#','�����',4,14,'F');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('iphone','zxc123!@#','��Ƽ���⽺�ٿ�',4,14,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('spider','spiderman67~','���',3,12,'F');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('opsa1','123123123Je@','����������������',3,8,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('test','123123123Je@','�׽�Ʈ',10,8,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('asd','123123123Je@','qwe',9,11,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('opsa','123123123Je@','����������������',3,8,'M');
Insert into ELCARO.ACCOUNT_TB (ID,PASSWORD,NICKNAME,ANI,MBTI,GENDER) values ('turquois1218','xjzltjr12$','jinkwine',5,9,'M');
REM INSERTING into ELCARO.ANI_TB
SET DEFINE OFF;
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (1,'mouse','../resources/images/ani/mouse.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (2,'cow','../resources/images/ani/cow.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (3,'tiger','../resources/images/ani/tiger.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (4,'rabbit','../resources/images/ani/rabbit.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (5,'dragon','../resources/images/ani/dragon.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (6,'snake','../resources/images/ani/snake.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (7,'horse','../resources/images/ani/horse.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (8,'sheep','../resources/images/ani/sheep.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (9,'monkey','../resources/images/ani/monkey.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (10,'rooster','../resources/images/ani/rooster.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (11,'dog','../resources/images/ani/dog.png');
Insert into ELCARO.ANI_TB (ANI,ANI_NAME,IMG_SRC) values (12,'pig','../resources/images/ani/pig.png');
REM INSERTING into ELCARO.BOARD
SET DEFINE OFF;
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (11,'����','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (12,'����','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (13,'����','20',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (14,'����','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
Insert into ELCARO.BOARD (SEQ,TITLE,DIV,READ_CNT,REG_DT,REG_ID,MOD_DT,MOD_ID) values (15,'����','10',0,to_date('23/06/28','RR/MM/DD'),'admin',to_date('23/06/28','RR/MM/DD'),'admin');
REM INSERTING into ELCARO.LUCK_TEXT_TB
SET DEFINE OFF;
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (49,50,'�и� ����� ����̴�,  �� �� �� ������, �ʵ� �غ� ����� �ʾ�.�� ���� �� �ϴ� ���� ���忡 �پ���� ����. 
������ ���� ��� �͸��� �������� ���� �ȸ� �ö󰡰�..���� �׸����� ������!! 
���ڴ� ��!! �Ƿµ� ��!! �� ���� ���� �ʹ� ������ �ſ���. ������ ������ �ٸ��ϴ�!!
��� ���񸶴� ����� �ſ���. ���� ���� �������ٰ� �ص� ���� �ָ� ����!! 
�ֽ� �Ӹ� �ƴ϶� �ε����̳� ��� ���ڿ����� ��� �ְ���!! ���� �Ͻô� ���� �׸��ΰ� ���ڿ� �����ϼ���!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (50,50,'���������� �����ϸ� �������� ������ ������ �� �ֽ��ϴ�. �ٸ�, ���� �� ����� ����� �м��� �ʿ��մϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (51,50,'�������� ���� �����Դϴ�. �Ƹ� �������� ����� ����ص� ���� �ſ���. ��ȸ�� ��� ������ ��������. 
���������� ���ذ� ������ ������ �� ���� �ֽ��ϴ�. ������ �������� �ڼ����� ���� �� �������̰� ����������!! 
������ �ƽ���? ���ڿ��� ���� ����� �ݹ�!! Ž��� �浿�� ��鸮�� �ʴ� ������ ���ڸ� �Ͻø� �˴ϴ�. 
�� �ڽ��� �ϰ� �������� ���ڸ� �Ͻñ� �ٶ��ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (52,50,'�ڽ��� ���� �ִ� �о߿� �����ϴ� ���� �����ϴ�. �� �о߿� ���� ���İ� ������ �ֱ� ������ ���ڿ� ���� ���ص��� ��������, ���� ������ ������ �� �ֽ��ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (53,50,'������ ������ ���� ���� ���� �� �ڽ��� �Ǵ����θ� �����ϴ� �� ��õ�����. 
������ ���� ������ ���ڸ� �����Ѵٸ�?? 
�� ����� ���̰� �־������� �𸣴� �����ϰ� �����Ͻñ� �ٶ��ϴ١�!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (54,50,'���ٸ��� �ε������ �ǳʺ�����~ �����ϴ� �ֽ� �Ǵ� ����� �����ִ� ���! �����غ����� �ٷ� �����Ͻ��� ���ð� ��Ȳ�� ���� ���ڸ� �غ��°� ������ �����ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (55,50,'���� ���ڴ� �����ϴ� �� ��õ�帳�ϴ�. 
�ֽ� or ������ ����ϴ� �� ���� ������ ����?����� ������ �� �� �ְ����� ������ ������ �ٽ� ���ƿ��� �ʴ� ���̶�� ���� ^^ 
������ �ֽ� or ������ �������� ���� ���� �� �� �����ϴ� �ɷ� ������ ���� �� ����? 
�� ū ����� ã�ƿ��� ���ݾƿ�!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (56,50,'������ ���� �� ������? ������ �����ϱ� ��¦ �ָ��� �������� ���� ���� ������ ����Ұ� ���� ���Դϴ�. �ֽ���Ʈ�� ��Ȯ�����ּ���. �ֽ��� �����Ѵٰ� �ٷ� �����Ͻø� ���ظ� �����Դϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (57,50,'����� ���ڴ� �ﰡ�ϴ� ���� �����մϴ�. �̹� ���� �ֽ����ڿ� Ư�� ������ 
���� �ϳ��Դϴ�. �ٸ� ������ �޷δ� 10��, 7��, 1��, 9��, 4��, 11��, 5��, 3��, 
6��, 12��, 8��, �׸��� 2���� �ֽ��ϴ�. 
������ �����ͷ� 3%�� ������ �����ϴ� ���� �������� ����ϼ���. ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (58,50,'�������� ���� �����ٴ� �ҽĿ� �ֱ��� ������ ���!! ������ ������ �̹� ���� 
���忡�� ���� ���� �����鼭 ������ ������� ������ ���� ��� �ƹ��͵� �𸣰� 
�����ߴٰ� �ö󰡴� �� �������� ��� �������� �ٽ� ������ ��⸦ ��ٸ��� 
���� ȸ�� �������� �׷� ���� �����ϴ�!!! �����̶� ȸ���ϰ� ���� ���� �����̴� 
�����ϸ� ������ ���ؼ� �԰� �缼��.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (59,50,'���� ����� ���� �Ķ����Դϴ�.  �ڻ����̳� ���ڿ��� ���� �ʾƿ�.? 
�ö󰥶��� ������ ���������� �ְ� �������� ������ �׶� �ö󰡴� �̴ϴ�.
������ �ڱ��� �������� �ʴ� ���� �����մϴ�. ��а� �ڵ��� ���� ���ð� 
�Ӽ��� �������. ȭ�������ϱ�~');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (60,50,'���ڷ� ��� ���� �η��� ����� ���� ���!! �ƹ��͵� �𸣰� ��Ǭ ū �޿� ������ 
���ڸ� ������ ������ ��ó�� �Ǵ� �� 1�� �����ϴ�...!! �׷��� �����ϸ� ������ �ž�
�� �� �־� ���������� ��ư �������� ���� ���� ���� �׸��μ��� �׷��� 
�� �� ��Ȱ�� ���� ��ٴڿ� �����ɾ� �Ѽ����� ��� �� �Ұ� �Ǹ� ���� �Կ�
 ���հŸ� ����ڰ� �� �� �Դϴ�...�Ф�');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (25,30,'������ ����� ���ȿ� ���� ���� �־����ϴ�. ������ �ֵ������� ���̵� ���� ���� �� �־��! �̷�� ���� ���� �־��ٸ� ���� �õ��غ�����! �ս��� �ذ��� �� �־� ����� ���� ���Դϴ�. 
');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (26,30,'������ �� ���� �ٺ��� �̷�״� ���θ��� �ѷ�������. �ڸ����� ��ġ ������ �������� ���ϰ� �� �ص״� ���ǵ� �������� 

SNS���� ������� ������ �ҽĵ� �˾ƺ� �� �ִ� ��ȸ�� ���� �ſ���. ���� ���� �ִ��� ���� ����� �ʹ� ���Ƽ� 

����� � �Ǽ��� �ص� ���� �Ʒ����� �������ְ� ������ �ܾ��� ������ ���þƼ� �� ���Դϴ�. �Ƹ�����. 

���ø�ŭ�� �ð� ���ڸ��� ��ǻ�͸� �����ϰ� �繫���� ���ĳ���������.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (27,30,'��ź�� �Ϸ簡 �� ���Դϴ�. ������ ��翡�� �̸� �Ҹ� ���� �����ϴ�. ���� ������ ��ȹ�� ä�õ� �� �ֽ��ϴ�. ������� �������� �Ȱ��� �þƵ� �������ϴ�. ');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (28,30,'������ ������ ���� �� �����ſ���. ���� �ϴ� ������ �� ��￩�ְ� ���� ���õ� ģ���� �� ���ְ� 

��ȭ�� �ϴ��� ���� ������ ��ſ� ��ȭ�� �̾����� ��㵵 �ְ� ���� �ſ���. 

������ �̷� �� �ϼ��� ���� ����� ������ ����Ű�� ��踦 ��Ű�� ���� �߿��ؿ�. 

�ʹ� ����� ���Ƽ� �Ǽ����� �ʵ��� �����ϼ���. ������ �Ʊ��� ������ ���� �� ���� �ֽ��ϴ�. ȸ��� �����̴ϱ��.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (29,30,'������ ���� �ǻ������ �� �Ǿ� �Ҹ��� ���� ���̿���. ��ҿ� �޸� ��㵵 �ְ� �ް� �ϵ� �����ϰ� ó���ϰ� �ִ� �Ϸ�
������ �̷� ���� �� ���� �ʾƿ�.
����� ����� ���� ���� �� �´� ���� ����� �����ٸ� ���� �����Ϸ��� ���� ���� �־��Ф�
�׷��� ���� ���� ����� ���� ���̸� �� ���� �Ǽ����� �ʰ� �����Ͽ� �Ϸ縦 ���� ������ �ؾ��մϴ�!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (30,30,'  ����� ����� �������Ű��⵵? ������ ����� ����� �������� �����ϴ�. ���� ���ż� Ʈ����� ����� �� �� ������ ������ ���ݴ� ���� �ϼž��մϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (31,30,'������ ���� ȣ���� ��Һ��� ����� ���� �ʾ� ������ �ִ� ���̿���. ��ҿ��� ��㵵 �ְ� �޾����� ������ �׷� ���� �ƴ� �� ���� ���̳׿�.
�̷� ���ϼ��� ���� �� ���п��� �����ּ���.
�׷��� ���� ���е� �������� ���� ����� ���۰� �ƴϾ�� ����� �������� ������ �ſ���.
�� �����ָ� ���� �Ϸ�� ������� �Ű� �����ָ� ������ ����� ��������� �׷��� �̰� ��� ��ȸ��°� ���� �����̳׿�..!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (19,20,'���� ���� ���� ����ϴ� ���ΰ� ����Ʈ�� �ϸ� ���� �� �Ϸ� ���� ���� ������.
�̻��ϰ� ����� ����Ʈ�� �ٸ����� ������ �� ������ ����� ���Ҵ� �Ⱦ��� �⺹�� ���� ���� �־��. ������ ���� �������� ���� ���� ���� Ư���ϰ� �ð��� �Բ� ������ �ͺ��ٴ� ����ϴ� ������ ����� �����ִ� �Ϸ縦 �����°� ����??');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (20,20,'�������� ������ �������� ������ �𸣰ڴ°�? ����Ʈ�� �ϸ� ������ �������� �Ͼ���� ������ �������� �����Ϸ� Ŀ���� �Ǵ� �׷����Դϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (4,10,'��鿡 ���� ���� ���� ���Դϴ�. �ڽ��� ������ ����ϰ� ǥ���ϸ鼭��, ������ ������ �����ϴ� �µ��� �����غ�����. �� ��� ��ο��� ���� ����� ���� ���Դϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (32,30,'������� ���� ������ �����̳�? ����� ����� ���� ���� �����Ű����ϴ�. �Ǽ��� ������� �޾������������� �ʹ� ū�Ǽ��� �����ϸ� ����� ��û ���������Ǽ� �ִ��� �����ϼž� �մϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (33,30,'������ ������ ����� �� �ִ� �ñ��Դϴ�. ������, �ڽ��� �ǰ��� ��Ȯ�ϰ� ǥ���ϸ鼭��, ���������� ������ ��ȭ�� �õ��غ�����.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (34,30,'������ ����� ����� ���� ������, ���� �Ĳ��� Ȯ���Ͽ� �����ϸ� �Ǽ����� �ʴ� �� ��õ�帳�ϴ�. 

����� �ɱ⸦ �ǵ���� ���� �� ��������?? 

���� ���� �Ǽ��Ѵٸ� ��簡 �� �� ���� ����������� �����..');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (35,30,'������ ������ ������ ����˴ϴ�. ����� �䱸������ ������Ű�� ���� ����� �� �����Ƿ�, �����ؾ� �մϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (36,30,'���� ���� ���ʹ� �Ÿ��� ���� �δ� �� ���䡦?? 

���� ��縦 �����ϱ� ���� ����� ���� �� ���ƿ�..

��翡�� ���� ���� �� �ִٸ� ������ ���� �� ��õ�帱�Կ�. 

Ȥ������ ���� ���� ���� �þƾ� �ϴ� �� �ִٸ� ���� �� ���� �Ŀ� ���� �ñ� �ٶ��ϴ�.

�̿��̸� ���ᵵ ���� ì�ܼ� ���� ����! 

���� ���� ���� �� �ϰ� ���ٰ� �� �� �Ǹ� �Ҷ��� ƥ �� ������ �����ϱ� �ٶ��ϴ�!! �Ф�');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (37,40,'�ȳ��� �輼�� ������~ ���� �� ������ ������ �ӹ��� ��������� �� �ູ�� ã�� �����ϴ�. �����е� �ູ�ϼ���~ 
�������� ��� �� ���� ����� ȸ�縦 ���ͺ�����. ������ ����ϱ� ���� ��!! 
ȸ�� ���� ������ ������ ���� ���� �ϵ��� ��ٸ��� ���� �̴ϴ�. ���ο� ���� ���� �ʹٸ� ������ �ְ��� Ÿ�̹��Դϴ�. 
���ο� ����� ������ ���� ��ȸ���� ��ٸ��� �������� ������� ������ �� �ִ� ��ȸ�� �� �ſ���!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (38,40,'������ ���������ص� Ī����!?�� ��� ���� �ִ� ���! ���� ȸ�翡�� ���������ص� 
�뼭�� �Ǵ³� ������ �ʹ�ū �Ǽ��� ū���� ���� ��Ȳ�� ���ô°� ������ �����ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (39,40,'���� ������� ������ �� ���� �ʴ´ٸ� �����ϼ� ��縦 �����غ��� ���ƿ�. ���� ���ο� ����. 
��Ʈ������ �ְ� ���� �ľƸŴ� ���庸�ٴ� ���� �� �����ο� �ϻ��� ��� �� �ִ� �� �ڽ��� ����� ������. 
������ ������ �׷��� ū ������ ������!! ������ ��������� ����ġ�� ��Űų� ����� �� �� ������ �� �����ؾ��մϴ�. 
����� �ɷ°� ������� �ϰ� ���ο� ������ �غ��غ�����!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (40,40,'ȸ�翡�� ��������?? ������ �����ϸ鼭 �ູ������ �Ͼ �� �Դϴ�. �׷��� ������ 
ȸ�翡�� ������ ���ð� ���� �Ϸ縦 ������ �ɰ� �����ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (41,40,'���� ���� ��ȭ�ο� �Ϸ縦 �����ڱ���?? 

���׻� �̷��� ��ȭ�Ӵٸ� ����ϰ� ���� ���� �ٵ�...''��� ������ ���ϰ� ���� ���!

���������θ� �����ϴ� �� ��õ�帳�ϴ�!

������ ���ϴ� ���� ��ȭ���� ���� �Ϸ縦 �������� �����!! 

�׷��� ������ �ƹ� �� ���� ����~�� �ϸ� �ϴ� �� ��õ�帳�ϴ�!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (42,40,'��� ���δ� ����, ģ��, ���, ������ ������ ��� �ڽ��� ��Ȳ�� �� �ľ��� �Ŀ� �����ϴ� ���� �����ϴ�. �ֺ��ε��� ������ ���� ���� �� �ֽ��ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (43,40,'������ ���� �� �� Ǯ���� ��!
�ϵ� �� �� Ǯ���� ȸ�� �������� ������ ���ؼ� �������� �����̶� ���� ������ �Ͱ������� ������ �ƴѵ��մϴ�!! 
Ŀ�� �����ϸ� ��� ������ ������ ����, ������ �������� �ٽ� �Ͽ� ���� ���� �� ����?
�츮 ������ ���� ���� �����ݾƿ�?? �Ф�');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (44,40,' ��縦 �ϴ���, ���ο� �������� �ڽ��� ������ ���� �� �ִ� Ȱ���� �����ϸ�, �̷��� �� ū ������ �̷� �� �ִ� ��ȸ�� ���� �� �ֽ��ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (45,40,'ȸ�糪 �б����� ū Ȱ���� �� �� �ֽ��ϴ�. ����ϱ⿣ �ʹ� �Ʊ��� �����Ű���? �������� ���� ����� �ɷ��� �����ݽô�. �� ���� ȸ��� �ڿ������� ������ ������ �� �ֽ��ϴ�.?�̹� ���⸸ �ѱ�� �ܱ��� ȸ�縦 ����� ���� �͵� ���ƿ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (46,40,'���� �Ϸ� ��ȭ�ο� �� �����鼭 ��ġ ������ ����� �� Ǯ���� ��!!! �̷� ������ �ӿ� ��ٽð��� �ٰ��ü��� �����δ� �̱ۺ��� ����� ���� �� �ִ� ����� ���� ä �������� ��ġ ���� �����ϰ� ������ ������� �������� �׸��ѱ�?? ��� ����� �ϰ� �ִ� ���!!! ��õ�Ϸ� ���� ���� ��� �� �����ð��� ������ ������ �޶����� �� ���ٴ� �������� �� �ٴϼ���!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (47,40,'���� ��ǥ�� ������ ���� ǰ��� �Ҷ�! ���� ���� ����ϴ�. �����ؼ� ��Ƽ�� ������ ������ ��ٸ��ô�. �켱�� �ϴ� �Ͽ� �����ϸ鼭 �����ϰ� �������ô�. �ð��� ������ �ڿ����� Ǯ���̴ϴ�. ����� �׸��ΰ� �ʹٴ� ������ ȸ�翡�� �˰� �ȴٸ� ����� �ٰ��� ��鸱 ������ ���� ���� ���� ���� ������ �����ϼ���.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (48,40,'���� �Ϸ� ���ϴ� ��� �ƹ��͵� ���� �ʴ� ���!! ���ϴ� ���� ���� �������� �����Ͽ� ���� ����͵� �ο� ���!! ȭ�� ���� ���� ����ϰ� �ٸ� ���� �������� ����ϴ� ���!! ���� �����ص� �ٸ���?? ������ ũ�� �޶����� �ʾƿ�Ф� ������ ġ���ص� ����ݵ� ���ƾ� �ϰ� �����ؾ� �� �� �ʹ� ���ƿ� ����̴� �����ϰ� ����ϰ� �; ���!! ���ؤФ�');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (1,10,'���� �����ϴ� ������� ���� �ٰ��� ������� ���ƿ�.
����� ��ٸ��� ����� ���� �ٰ��� ����� �Ŵϱ��.
ū �Ǽ��� ���� ���ƿ�.
�����ؿ�. ��ſ��Ե� ����� ���۵Ǵ� ���� �Գ׿� :)');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (2,10,'��鿡 ���� ���� �ſ� �����ϴ�. �ڽ��� ������ ����ΰ�, �����ϰ� ���濡�� �����ϴ� ���� �߿��մϴ�. ���浵 ����� ������ ����� ��ٸ��� ���� ���Դϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (3,10,'���! ���� ������ ����ϳ׿�!!
�����ϴ� ������� ���� ���� ������� ȥ���ݽô�!!
����?? ����ߴٰ� �������ұ� �� �����ȴٰ��?? �״뿩~ �ƹ� ���� ���� ���ƿ�~~
���� ����� ������ ����ϴ�!
����� Ÿ�̹�!! ������ ���Դϴ�!!!
����� �ڽŰ��� ������ �����ϴ� �� �ƴϰھ��??
��! �ڽŰ��� ������!! ȥ���ַ� �����ô�!!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (5,10,'�������� �⼼�Դϴ�. �������� �ڼ��� ����� ���� ��½����ݴϴ�. �������� �ڼ��� �����ϼ���. �����ϰ��� �ϴ� ������ ������ �������Դϴ�. �������� ����� ���� ����?');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (6,10,'����� �Ƹ����ѵ�.... ����� ��� �Ǵ� �泲�� ����� �ľ��� ���� �ʽ��ϴ�. ����� �ϴ��� ������ ��оȻ��ϰ� �Ͻø� �ɰŰ����ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (7,10,'�ֺ��� ����� �ŷ��� �����ϱ� ���� �� �Դϴ�. ¦����ϴ� �̼��� �ִٸ� ���ɾ����. ������ ����ϼ��� ������ ��鳯�� �ƴմϴ�. �� �� �غ��ؼ� ������ �õ��غ��ñ�~');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (8,10,'������ ���� �̻��ѵ�? ����� ���� ������ �̻��ϴٰ� ������ �ֽ��ϴ�. ������ �� ���� ���������� ���������� �𸣰����� ������ ����� �Ͻô°� ������ �����ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (9,10,'���� ����� �ϽŴٱ���? �����ϴ� ������� ����� ��Ⱑ ���� ���� �־��. 
����� ��ȹ�� �ڽ��� ���� �ʴ� ������ �� Ȯ���� ���ƿ�. ��� ���� �Ϻ��ؾ� �� ��ȹ�� ������ ���� Ȯ���� ���� ���ƿ�. 
������ ������ ���� ����� �����ϴ� ����� ����� ������ �ñ��� �Ѵٴ� ���Դϴ�. ���� ���ɼ��� ������. 
���� ����!! �� ������� ����� �ŷ��� ������ �� ���� ��ȹ�� �غ��غ���.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (10,10,'�ڲ� ȣ���� ���� ��밡 �ֳ���? �����ôٸ� ����� ���� ���ƺ��°� ����!?
ȥ�ڸ� �����ϸ� ��ó�ޱ⵵ ���� ���� ���� ��ſ��� ������ ���µ� ����ϸ� �δ㽺���� �����̼� ���Ѻ��� �ָ��� ���Ѻ��� �� �� �ֽ��ϴ�.
�׷��� ������ ����� ���縮 �ϴ� �ͺ��ٴ� ���Ѻ��� �� ���� �ο��� ���ڱ� ��� �������� �ƹ��� �𸨴ϴ� ���縮 ������� ������.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (11,10,'���� �����ϴ� ����� �ֳ���? Ȥ�ö� ���� ����ϱ�� ���� �Ծ��ٸ� �������� �� ���� ��ó �ޱ� ���� 
�ٸ� ���� �̷�� ���� ���� �ſ���. � ���� �ص� �θ�ƽ�ϰ� �鸮�� ���� �Ű� �ش������δ� ������ ������ ��Ű� �ٸ� ���� ���ϰ� ���� ���� �־��. 
������ ���ø� ���� �ƴϰ� �� ����� ����� �ο��� �ƴϿ���. �� �ٸ� ��ȸ�� ������ ���ο� ��ȸ�� ã�� ��⸦ ��������.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (12,10,'�����ϴ� ��밡 �ִٸ� �� ����� �󸶳� �˰� ���³���? Ȥ�ö� �˰� ������ �󸶰� �Ǿ��� ��ҿ� �������μ��� ������ �� ������ ���ٸ� ������� ������.
�ڱ� ��Ÿ���� �ƴ� ��뿡�� ȣ���� ǥ���ߴµ� ������ �������ϸ� �� ���� ����� ���Դϴ�.
� �ൿ�� �ص� ������ ����� �����ϴµ�
ȣ���� ǥ���ߴµ� ������ �� ������ ���̸�
����� �����̼��� ���� ���ϰ� �ָ��� ���Ѻ��� ������ ���� ���� ������� ���� �ҽ��� ���� ���Դϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (21,20,'����� �߰��Ǳ� ���� ���Դϴ�. ��Ű�� �ʴ� �ļ��� �����ϴ�. ���� ��Ȳ��
����Ϸ��� ������ �� �������� ū �ο��� �ҷ�����ų �� �ֽ��ϴ�. ��Ʈ�ʿ��� 
����� �����ϰ� ���ϰ� ���⸦ ���ĳ�������.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (22,20,'������̶� �θ�ƽ�� �Ļ縦 �ϰ� �; �и��� �� �� ���� �����ϰ� ���µ� ������ ������ ��ܿ��� �̸��� �������� 
��Ʈ���� ���� ���� �̲��� �� ä�� �� ����Ʈ�� ������ ���µ� ���� ���� �츮 �ֹ��� �̻��ϰ� �ʰ� ���� �ڲ� ������ ���� ����Ʈ�� �� �� �־��. 
������ �ۿ��� Ÿ�ε�� ������ �ʰ� �� ���� �ð��� �������� ���� ���迡 ���� �� �ֽ��ϴ�. 
���븦 �ϽŴٸ� ����� ���������, �ƴϸ� ���� ������ �̿��غ��� ���� ����? ������');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (23,20,'��Ʈ�ʸ� �����ϴ� ������ �ֽ��ϴ�. ��ī�ο� ������ ����� �����ɿ� 
��ó�����ϴ�. ���δ� �ڽ��� �ǰ��� ������ ����� �ǰ��� �����ؾ��մϴ�.?
��Ʈ���� �䱸������ �켱�� �ϴ� ���� �����ϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (13,20,'������ ����ϴ� ����� �Ϸ� ���� �̻� ���̴� ���̳׿�.
�Ѹ���� ��������� ����� ���� ��!���̶�� �� �� �ְڽ��ϴ�.
������ �̻� �װڴµ� �� �̻� ���̸�.. ���~ ���~ �ʹ� ���ڴ�!!! �̷��� ����� ����� ���� ��
����ϴ� ������� ������ ���� ������ ��� ǥ���� �ּ���.
���� ���谡 ������ ����� �� �ִ� ���� ��ȸ �ƴϰھ��?!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (24,20,'���� ���� ���� ���ΰ� ����Ʈ�� �� �ϴ� �� ���� �������� ��¿ �� ���� ����Ʈ�� �ؾ� �Ѵٸ� �ش������� ���� ȯ�±����� ����ؾ� �� �ſ���. 
������ �̻��ϰԵ� ������ ����� �� ���� ���� ���� �ְ� ����� �Ͽ� ¥�� ���� �ִٴ� ������ �� ���� �־��. �ص��� ������ ���� �ִ� ����� ����!! 
�׷��� ������ ������ �����ϴٸ� ���� ���� �������̱����ϰ� �� ���ƺ���. ���� �� ���� ������� ������ �� ���� �ֽ��ϴ�. 
������ �ڱ�ְ� ���� ����̶��? �� ���ƿ�? �� ���� ȯ���� ���� �͵� �پ��� �ΰ����踦 ���� �� �ִ� ��ȸ�� �� ���Դϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (14,20,'������ ����Ʈ�� ��� �� �ִ� ���� ���Դϴ�. Ư���� ��ȹ ���̵�, �Բ� �ð��� ������ ���� �߾��� ����� �� �� ���� ���Դϴ�.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (15,20,'���� ����ϴ� ������� ������ �ͼ������� ������ �پ���������?
���� ������. ������ �ٽ� ���۵Ǵ� ���̿���!!
������ ����ϴ� ����� ���� �ʹݿ� �ߴ� �ϵ��� �ٽ� �ѹ� �غ��� �� ��õ�帳�ϴ�.
�� ���� �Բ� �ߴ� ������ �߾���� �ٽ� �ǻ��ܺ��� ������ ó�� �������� ���� �� ������ ����������.*
���� �ʹ��� �� ������ �ٽ� ���ƿ��� ������ ����!! ���� ���ݾƿ�?? ?     ��! ���� �ʹ��� ������� ���� ������ ���� ing �� �״� ���� �����!!');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (16,20,'����Ʈ�� �ϴ� ����, ���θ� ���� �� �����ϰ� ������ �� �ִ� ��ȸ�� ���� ���Դϴ�. �̸� ���� ���θ� ���� ������ ���� �� ���� ���Դϴ�.
');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (17,20,'������ ���� �ִٴ� ��� �ϳ� �����ε� ������ �ູ�ϰ� ��ſ� ���Դϴ�.
��ҿ� �Ȱ��� �ൿ�� �ϴ��� ����� ����� �߰��Ǹ� �ٸ��� ���� ���Դϴ�,
���� �ִٴ� ������ ���� �ູ�ϰ� ����� �� ���� �������� �ʾҴ� �ֱ��� ���� ����ϴ� ����� ������ ��ߴ� �� ���ִ� �� ����?
�׷��ٰ� �ʹ� �����Ͽ� ���Һ� �ϴ� ����Ʈ�� ���� ���� �������� ǥ���ϼ���.');
Insert into ELCARO.LUCK_TEXT_TB (SEQ,LUCK_TY,LUCK) values (18,20,'������ ���� ����ѵ�? ��ģ �Ǵ� ��ģ�� ����� ��� �մϴ�. ���ó�� �������ø� �׳��� ū �������� �������� �Դϴ�.');
REM INSERTING into ELCARO.MBTI_TB
SET DEFINE OFF;
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (1,'ISTJ','../resources/images/mbti/istj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (2,'ISTP','../resources/images/mbti/istp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (3,'ISFJ','../resources/images/mbti/isfj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (4,'ISFP','../resources/images/mbti/isfp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (5,'INTJ','../resources/images/mbti/intj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (6,'INTP','../resources/images/mbti/intp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (7,'INFJ','../resources/images/mbti/infj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (8,'INFP','../resources/images/mbti/infp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (9,'ESTJ','../resources/images/mbti/estj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (10,'ESTP','../resources/images/mbti/estp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (11,'ESFJ','../resources/images/mbti/esfj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (12,'ESFP','../resources/images/mbti/esfp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (13,'ENTJ','../resources/images/mbti/entj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (14,'ENTP','../resources/images/mbti/entp.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (15,'ENFJ','../resources/images/mbti/enfj.png');
Insert into ELCARO.MBTI_TB (MBTI,MBTI_TYPE,IMG_SRC) values (16,'ENFP','../resources/images/mbti/enfp.png');
REM INSERTING into ELCARO.RESULT_TB
SET DEFINE OFF;
REM INSERTING into ELCARO.URL_TB
SET DEFINE OFF;
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (121,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (122,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (123,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (220,to_date('23/06/26','RR/MM/DD'),'www.naver.com','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (221,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (222,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (241,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (242,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (243,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (244,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (245,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (246,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (247,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (248,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (269,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (270,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (271,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (272,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (161,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (181,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (249,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (250,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (273,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (284,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (285,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (286,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (287,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (288,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (289,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (290,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (291,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (292,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (293,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (294,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (295,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (296,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (297,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (298,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (299,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (300,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (301,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (302,to_date('23/06/26','RR/MM/DD'),'www.naver.com','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (303,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (304,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (305,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (306,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (307,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (308,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (309,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (310,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (311,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (312,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (313,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (142,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (143,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (141,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (201,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (202,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (203,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (204,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (205,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (206,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (207,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (208,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (209,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (210,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (211,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (212,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (213,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (214,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (252,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (254,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (1,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (2,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (3,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (4,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (5,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (6,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (7,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (8,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (9,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (10,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (11,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (21,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (22,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (23,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (24,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (25,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (26,to_date('23/06/14','RR/MM/DD'),'aaaaaaaaaaaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (27,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (28,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (29,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (30,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (31,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (32,to_date('23/06/14','RR/MM/DD'),'aaaabbbbbaaaaaaaaaaaaaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (251,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (255,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (256,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (257,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (274,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (275,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (276,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (277,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (278,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (279,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (280,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (281,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%9C%BC%EB%9D%BC%EC%B0%A8%EC%B0%A8%201%EC%A1%B0&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fenfp.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fdragon.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','sh');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (282,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (283,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (41,to_date('23/06/18','RR/MM/DD'),'aaaa','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (61,to_date('23/06/18','RR/MM/DD'),'qqqqq','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (62,to_date('23/06/18','RR/MM/DD'),'qqqqq','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (63,to_date('23/06/18','RR/MM/DD'),'qqqqq','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (64,to_date('23/06/18','RR/MM/DD'),'comic.naver.com/webtoon/detail?titleId=796152&no=54','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (101,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (102,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (215,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (216,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (217,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (218,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (219,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (253,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (258,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (259,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (260,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (261,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (262,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (263,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (264,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (265,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (266,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (267,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%7BoutVO.nick%7D&mbtiSrc=%7BoutVO.mbtiSrc%7D&aniSrc=%7BoutVO.aniSrc%7D&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (268,to_date('23/06/26','RR/MM/DD'),'www.naver.com','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (336,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (337,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (339,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (364,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (365,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','spider');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (369,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (370,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (371,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (372,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (314,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (315,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (316,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (317,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (318,to_date('23/06/26','RR/MM/DD'),'www.naver.com','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (319,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (320,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (321,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (322,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (323,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (324,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (325,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (326,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (327,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (328,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (329,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (330,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (331,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (332,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (333,to_date('23/06/26','RR/MM/DD'),null,'mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (334,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (335,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (338,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (341,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (342,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','ccjj1002');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (343,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (344,to_date('23/06/26','RR/MM/DD'),'http://www.elcarotest.com:8087/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (345,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (346,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (347,to_date('23/06/26','RR/MM/DD'),'http://www.elcarotest.com:8087/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (348,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (349,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (351,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (352,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (353,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (354,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (355,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (356,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (357,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (358,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (359,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (360,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (361,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','test');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (362,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (363,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (373,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (374,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (383,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','opsa1');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (384,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','opsa1');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (385,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','opsa1');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (366,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (367,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (368,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','spider');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (375,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (376,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (377,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (378,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (379,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (380,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (381,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (382,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','space');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (350,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','turquois1218');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (401,to_date('23/06/27','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (402,to_date('23/06/27','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (403,to_date('23/06/27','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do','mj');
Insert into ELCARO.URL_TB (SEQ,RESULT_DATE,URL,ID) values (340,to_date('23/06/26','RR/MM/DD'),'http://localhost:8080/ehr/ELCARO/result.do?nick=%EC%8A%A4%ED%8C%8C%EC%9D%B4%EB%8D%94%EB%A7%A8&mbtiSrc=..%2Fresources%2Fimages%2Fmbti%2Fintj.png&aniSrc=..%2Fresources%2Fimages%2Fani%2Fcow.png&luckList[0].luck=%7Blist%5B0%5D.luck%7D&luckList[1].luck=%7Blist%5B1%5D.luck%7D&luckList[2].luck=%7Blist%5B2%5D.luck%7D&luckList[3].luck=%7Blist%5B3%5D.luck%7D&luckList[4].luck=%7Blist%5B4%5D.luck%7D','mj');
--------------------------------------------------------
--  DDL for Index PK_ACCOUNT_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_ACCOUNT_TB" ON "ELCARO"."ACCOUNT_TB" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ANI_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_ANI_TB" ON "ELCARO"."ANI_TB" ("ANI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_BOARD" ON "ELCARO"."BOARD" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_LUCK_TEXT_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_LUCK_TEXT_TB" ON "ELCARO"."LUCK_TEXT_TB" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MBTI_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_MBTI_TB" ON "ELCARO"."MBTI_TB" ("MBTI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_URL_TB
--------------------------------------------------------

  CREATE UNIQUE INDEX "ELCARO"."PK_URL_TB" ON "ELCARO"."URL_TB" ("SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ACCOUNT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("ANI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("MBTI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ACCOUNT_TB" ADD CONSTRAINT "PK_ACCOUNT_TB" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ANI_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."ANI_TB" MODIFY ("ANI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ANI_TB" MODIFY ("ANI_NAME" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ANI_TB" MODIFY ("IMG_SRC" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."ANI_TB" ADD CONSTRAINT "PK_ANI_TB" PRIMARY KEY ("ANI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "ELCARO"."BOARD" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LUCK_TEXT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."LUCK_TEXT_TB" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."LUCK_TEXT_TB" MODIFY ("LUCK_TY" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."LUCK_TEXT_TB" ADD CONSTRAINT "PK_LUCK_TEXT_TB" PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MBTI_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."MBTI_TB" MODIFY ("MBTI" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."MBTI_TB" MODIFY ("MBTI_TYPE" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."MBTI_TB" MODIFY ("IMG_SRC" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."MBTI_TB" ADD CONSTRAINT "PK_MBTI_TB" PRIMARY KEY ("MBTI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table URL_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."URL_TB" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "ELCARO"."URL_TB" ADD CONSTRAINT "PK_URL_TB" PRIMARY KEY ("SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACCOUNT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."ACCOUNT_TB" ADD CONSTRAINT "FK_ANI_TB_TO_ACCOUNT_TB" FOREIGN KEY ("ANI")
	  REFERENCES "ELCARO"."ANI_TB" ("ANI") ENABLE;
  ALTER TABLE "ELCARO"."ACCOUNT_TB" ADD CONSTRAINT "FK_MBTI_TB_TO_ACCOUNT_TB" FOREIGN KEY ("MBTI")
	  REFERENCES "ELCARO"."MBTI_TB" ("MBTI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESULT_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."RESULT_TB" ADD CONSTRAINT "FK_ACCOUNT_TB_TO_RESULT_TB" FOREIGN KEY ("ID")
	  REFERENCES "ELCARO"."ACCOUNT_TB" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table URL_TB
--------------------------------------------------------

  ALTER TABLE "ELCARO"."URL_TB" ADD CONSTRAINT "FK_ACCOUNT_TB_TO_URL_TB" FOREIGN KEY ("ID")
	  REFERENCES "ELCARO"."ACCOUNT_TB" ("ID") ENABLE;
