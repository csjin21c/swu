DROP DATABASE IF EXISTS STUDY;
CREATE DATABASE IF NOT EXISTS STUDY;
USE STUDY;

DROP TABLE IF EXISTS TMEMBER;
CREATE TABLE IF NOT EXISTS TMEMBER (
    fid			varchar(12)		not null	comment '가입자 아이디',
    fpass		varchar(20)		not null	comment '가입자 비밀번호',
    fname		nvarchar(20)	not null	comment '가입자 이름',
    femail		varchar(50)		not null	comment '가입자 이메일 주소',
    fphone		varchar(13)		not null	comment '가입자 연락처',
    faddr1		nvarchar(30)	not null	comment '가입자 기본주소',
    faddr2		nvarchar(20)	not null	comment '가입자 상세주소',
    fbirthday	date			not null	comment '가입자 생년월일',
    fgender		set('남','여')	not null	comment '가입자 성별',
    fdate		datetime		not	null	comment '가입일',
    primary key (fid)
) COMMENT='AWS RDS 서비스 테스트용 테이블';

INSERT INTO TMEMBER VALUES
('mzc-adc', '1111', '김유신', 'mzc-adc@mz.co.kr', '010-1111-1111', '서울특별시 강남구 강남대로 66길 14', '와이즈플레이스 210호', '2002-07-26',2, now()),
('adc-tot', '2222', '이순신', 'adc-tot@megazone.com', '010-2222-2222', '서울특별시 강남구 논현로길', '메가존빌딩 2층', '2004-05-21', '1', now());

SELECT fid, fname, fphone, faddr1, fbirthday, fgender FROM TMEMBER WHERE fid = 'adc-tot';
SELECT * FROM TMEMBER;