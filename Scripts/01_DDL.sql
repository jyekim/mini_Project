create table boardF(
    boardFSeq number primary key,           --�Խñ� ��ȣ
    userId  varchar2(50) not null,          --�������̵�
    fileName varchar2(50) not null,         --÷������, seller �̹���
    
    boardFExpireDate varchar2(30) NOT NULL, --�Խñ� ��������
    boardFIsExpired varchar2(10),           --���Ῡ��
    boardFSubject varchar2(50) NOT NULL,    --����
    boardFGoalPercet number,                --�޼���
    boardFGoalAmount number,                --��ǥ�ݾ�
    boardFRealAmount number,                --�ݵ�������
    boardFContent varchar2(4000) NOT NULL,  --����
    boardFSendDate DATE NOT NULL,           --�߼���
    boardFTotRewardCnt number,              --�غ�� ��ǰ ����
    boardFSoldRewardCount number            --������� �Ǹŵ� ��ǰ ������ ����
    );

create table Commnet_f(
    commnetSeq number primary key,      --��� ��ȣ
    boardSeq number NOT NULL,           --�Խñ� ��ȣ
    fileName varchar2(50),     --���� ������ �̹���
    userId varchar2(50) NOT NULL,
    boardFPickAmount number,
    boardFBuyDate varchar2(30) NOT NULL
);
    
-- FORMQ: ����/�Ű��ϱ�
CREATE TABLE FORMQ (
   	FORMQESEQ 	  NUMBER  		 PRIMARY KEY,
	FORMQCATE1    VARCHAR2(50)					 NOT NULL, 
	FORMQCATE2    VARCHAR2(50)  				 NOT NULL, 
	FORMQEMAIL1   VARCHAR2(100)					 NOT NULL,
	FORMQEMAIL2   VARCHAR2(100) 				 NOT NULL,
	FORMQPHONE1   VARCHAR2(15)  				 NOT NULL,
	FORMQPHONE2   VARCHAR2(15) 				     NOT NULL,
	FORMQPHONE3   VARCHAR2(15)  				 NOT NULL,
	FORMQCONTENT  VARCHAR2(4000) 				 NOT NULL,
	FORMQRCPTDATE VARCHAR2(30)   DEFAULT SYSDATE NOT NULL
);

CREATE SEQUENCE FORMQSEQ NOCACHE NOCYCLE;



-- NOTICE: ��������
CREATE TABLE NOTICE (
NOTICESEQ 	  NUMBER   PRIMARY KEY,
NOTICESUBJECT VARCHAR2(200) NOT NULL,
NOTICECONTENT VARCHAR2(2000) NOT NULL,
NOTICEDATE 	  VARCHAR2(100) NOT NULL
);


CREATE SEQUENCE NOTICESEQ NOCACHE NOCYCLE;

create table userinfo(
    userid      varchar2(50) primary key,           --�Խñ� ��ȣ
    userpassword  varchar2(100) not null,          --�������̵�
    username    varchar2(50) not null,         --÷������, seller �̹���
    userbirth   varchar2(30) NOT NULL, --�Խñ� ��������
    userphone   varchar2(20),           --���Ῡ��
    gender      varchar2(50) NOT NULL,    --����
    useremail   varchar2(120)
);

create table userfile (
    fileseq      NUMBER primary key,           --�Խñ� ��ȣ
    userid      varchar2(50) not null,          --�������̵�
    filename    varchar2(500)
);

create table userfile (
    fileseq      NUMBER primary key,           --�Խñ� ��ȣ
    userid      varchar2(50) not null,          --�������̵�
    filename    varchar2(500)
);

bdSeq
fileName VARCHAR2
bdExpireDate DATE
bdSubject VARCHAR2
bdGoalAmount  
bdCumulativeAmount
bdContent VARCHAR2
bdTagName VARCHAR2
bdDonaGroup VARCHAR2
bdImg
bdThumbImg
categorydona
bdStartDate DATE
