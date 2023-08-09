SHOW DATABASES;

USE EMPLOYEES;

SHOW TABLES;
SHOW TABLE STATUS;
SHOW COLUMNS FROM DEPARTMENTS;

SHOW INDEX FROM EMPLOYEES;

SHOW TABLES IN INFORMATION_SCHEMA;
DESCRIBE INFORMATION_SCHEMA.CHARACTER_SETS;

-- INFORMATION_SCHEMA;
USE INFORMATION_SCHEMA;
SHOW TABLES;

SHOW ENGINES;

-- 캐릭터셋/콜레이션
use world;

show columns from city;
desc city;

show index from city;

show status;

-- MySQL 기본 케릭터셋 확인
show variables like 'character_set_system';
show variables like '%char%';

show variables like '%engine%';

alter database world character set utf8 collate utf8_general_ci;
alter table city character set utf8 collate utf8_general_ci;

create database sampleTestDB default character set utf8 collate utf8_general_ci;

-- 스토리지 엔진
-- 쿼리를 통해 변경
SELECT engine, support FROM information_schema.engines WHERE support = 'DEFAULT';
SET default_storage_engine = MyISAM; -- 리부팅시 리셋

-- 설정파일 변경
