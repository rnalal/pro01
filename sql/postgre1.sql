create table member(
	id varchar(20) primary key, 
	pw varchar(300) not null,
	name varchar(50) not null,
	age int,
	email varchar(200),
	tel varchar(13), 
	addr varchar(300),
	point int default 0,
	mdate date default current_date 
);	

select * from member;

create table board(
	boid serial primary key,
	title varchar(300) not null,
	content varchar(1000),
	author varchar(30),
	bodate date default current_date,
	constraint b_fk FOREIGN KEY (author) REFERENCES member(id)
);

select * from board;

--샘플 데이터 입력
insert into member values('young', '1234', '관리자',50, 'young@naver.com', '010-1234-5678', '경기도 고양시 일산동', default, default);

insert into board values(default, '테스트제목1', '테스트내용1', 'young', default);