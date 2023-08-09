use mysql;

show tables;
desc user;

select user, host from user;

-- 로컬시스템/외부 유저 등록
-- 5.7 이후
CREATE USER 'sampleUser'@'localhost' IDENTIFIED BY 'sampleUser1234!';
CREATE USER 'sampleUser'@'%' IDENTIFIED BY 'sampleUser1234!';
CREATE USER 'sampleUser'@'192.168.0.%' identified by 'sampleUser1234!';


-- 예전 방식
insert into user(host, user, password, ssl_ciper, x509_isuser, x_509_subject)
values('localhost', 'sampleUser', password('1234'),'','','');

-- 사용자 삭제
-- drop user 사용자명@host;
drop user sampleUser@localhost;

-- 반영하기
flush privileges;

-- 예제
show grants for 'sampleUser'@'localhost';

-- sampleUser(localhost/로컬랜/인터넷전체)의 접속을 허용하시오
grant all on world.* to 'sampleUser'@'localhost';
grant all on *.* to 'sampleUser'@'192.168.0.%';
grant all on world.* to 'sampleUser'@'%';

grant select, insert on world.* to sampleUser@localhost;
grant update(Name) on world.city to sampleUser@localhost;

revoke all on *.* from 'sampleUser'@'localhost';


-- 역할 설정

CREATE ROLE world_admin;
GRANT INSERT, DELETE ON world.city TO world_admin;
GRANT world_admin TO sampleUser;

DROP ROLE world_admin;

