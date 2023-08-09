use sampleDB;

show tables;

show create table BusinessCard;

drop table BusinessCard;

CREATE TABLE BusinessCard (
    ID INT NOT NULL,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Telephone VARCHAR(255),
    CreationTime DATE
)
PARTITION BY RANGE (YEAR(CreationTime)) (
    PARTITION p0 VALUES LESS THAN (2013),
    PARTITION p1 VALUES LESS THAN (2014),
    PARTITION p2 VALUES LESS THAN (2015),
    PARTITION p3 VALUES LESS THAN MAXVALUE
);

SELECT * FROM BUSINESSCARD;

    
    
-- 파티션 추가 / 삭제
ALTER TABLE BUSINESSCARD ADD PARTITION(
	PARTITION P4 VALUES LESS THAN(2005)
    );

ALTER TABLE businesscard DROP PARTITION P4;


-- 파티션 분할/병합
ALTER TABLE BusinessCard
	reorganize partition p3 into(
		partition p3 values less than(2015),
        partition p4 values less than maxvalue
    
    );
    
alter table BusinessCard
	reorganize partition p2,p3 into(
		partition p23 values less than(2014)
    );
    
    
show create table BusinessCard;

insert into BusinessCard values('1', 'Bob', 'Seoul', '123-4567', '2010-01-01');
insert into BusinessCard values('2', 'Sam', 'Busan', '123-4567', '2015-01-01');

select * from BusinessCard where CreationTime > '2014-01-01';

update BusinessCard set CreationTime = '2016-01-01' where Name = 'Bob';

