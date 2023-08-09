-- 트랜잭션 기본 설정 확인
select @@autocommit; -- 1(true) 0(false)

-- AutoCommit 설정 끄기(줄단위 커밋모드 취소)
set autocommit = false;

-- Lock
-- 기본 스토리지엔진 확인
select engine, support from information_schema.engines where support = 'DEFAULT';

-- 기본 스토리지엔진 변경
set default_storage_engine = innoDB;

-- city 테이블 스토리지엔진 변경
use world;
select engine from information_schema.TABLES where table_name = 'city' and table_schema = 'world';

-- city 테이블 스토리지엔진 변경
alter table city engine = INNODB;

-- 격리 수준
-- 기본 트랜잭션 격리 수준 확인
select @@transaction_isolation;

set transaction_isolation = 'READ-COMMITED';
