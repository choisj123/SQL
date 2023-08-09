-- city 테이블의 레코드를 추가하는 프로시저
DELIMITER //
CREATE PROCEDURE InsertLines()
BEGIN 
	insert into city values(10000, 'A', 'KOR', 'Test', 1000000);
    insert into city values(20000, 'B', 'KOR', 'Test', 2000000);
END
//

DELIMITER ; 

CALL InsertLines;

-- BusinessCard의 줄 수를 리턴하는 저장함수
DELIMITER //
CREATE FUNCTION CountLines() RETURNS INTEGER
BEGIN 
	DECLARE LINE_COUNT INTEGER;
    SELECT COUNT(*) INTO LINE_COUNT FROM BUSINESSCARD;
    RETURN LINE_COUNT;
END
//
DELIMITER ;

SELECT COUNTLINES() FROM BUSINESSCARD;

-- 트리거
-- BusinessCard 테이블에 레코드가 추가되면 BusinessCard2 테이블에 레코드를 추가하는 트리거
use sampleDB;

Create table TBusinessCard(Name Varchar(255), Address varchar(255), Telephone varchar(255));


Create table TBusinessCard2(Name Varchar(255), Address varchar(255), Telephone varchar(255));

DELIMITER $
CREATE TRIGGER INSERTBUSINESSCARD2 AFTER INSERT ON TBusinessCard
	FOR EACH ROW
BEGIN
	INSERT INTO TBusinessCard2 VALUES('ZZZ', 'ZZZZ', '000-000');
END$
DELIMITER ;

DROP TRIGGER INSERTBUSINESSCARD2;

INSERT INTO TBusinessCard VALUES('Sam', 'Sindang', '111-111');

select * from TBusinessCard;
select * from TBusinessCard2;
