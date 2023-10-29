create table boardF(
    boardFSeq number primary key,           --게시글 번호
    userId  varchar2(50) not null,          --유저아이디
    fileName varchar2(50) not null,         --첨부파일, seller 이미지
    
    boardFExpireDate varchar2(30) NOT NULL, --게시글 만료일자
    boardFIsExpired varchar2(10),           --만료여부
    boardFSubject varchar2(50) NOT NULL,    --제목
    boardFGoalPercet number,                --달성률
    boardFGoalAmount number,                --목표금액
    boardFRealAmount number,                --펀딩누적액
    boardFContent varchar2(4000) NOT NULL,  --내용
    boardFSendDate DATE NOT NULL,           --발송일
    boardFTotRewardCnt number,              --준비된 상품 수량
    boardFSoldRewardCount number            --현재까지 판매된 상품 리워드 개수
    );

create table Commnet_f(
    commnetSeq number primary key,      --댓글 번호
    boardSeq number NOT NULL,           --게시글 번호
    fileName varchar2(50),     --유저 프로필 이미지
    userId varchar2(50) NOT NULL,
    boardFPickAmount number,
    boardFBuyDate varchar2(30) NOT NULL
);
    
-- FORMQ: 문의/신고하기
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



-- NOTICE: 공지사항
CREATE TABLE NOTICE (
NOTICESEQ 	  NUMBER   PRIMARY KEY,
NOTICESUBJECT VARCHAR2(200) NOT NULL,
NOTICECONTENT VARCHAR2(2000) NOT NULL,
NOTICEDATE 	  VARCHAR2(100) NOT NULL
);


CREATE SEQUENCE NOTICESEQ NOCACHE NOCYCLE;

create table userinfo(
    userid      varchar2(50) primary key,           --게시글 번호
    userpassword  varchar2(100) not null,          --유저아이디
    username    varchar2(50) not null,         --첨부파일, seller 이미지
    userbirth   varchar2(30) NOT NULL, --게시글 만료일자
    userphone   varchar2(20),           --만료여부
    gender      varchar2(50) NOT NULL,    --제목
    useremail   varchar2(120)
);

create table userfile (
    fileseq      NUMBER primary key,           --게시글 번호
    userid      varchar2(50) not null,          --유저아이디
    filename    varchar2(500)
);

create table userfile (
    fileseq      NUMBER primary key,           --게시글 번호
    userid      varchar2(50) not null,          --유저아이디
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
