-- To Display the project table
	DELIMITER $$
	CREATE PROCEDURE PROJECTS()
	BEGIN
		SELECT * FROM PROJECT;
	END $$
	DELIMITER ;
	
-- CALL THE PROCEDURE
	CALL PROJECTS();
	

-- INCREMENT BY 10 
	DELIMITER $$								-- CALL BY REFERENCE MODE - OUT
	CREATE PROCEDURE INCREASEBY10(IN A INTEGER)	-- CALL BE VALUE MODE - IN 
	BEGIN
		SET A = A + 10;
	END$$
	DELIMITER ; 

-- SET VALUE 
	SET @A=2;
	CALL INCREASEBY10(@A); 
	SELECT @A; 

-- ODD OR EVEN PROCEDURE
	DELIMITER $$
	CREATE PROCEDURE ODD_OR_EVEN(IN NUM INTEGER)
	BEGIN
		IF NUM%2=0 THEN
			SELECT 'THE NUMBER IS EVEN';
		ELSE 
			SELECT 'THE NUMBER IS ODD'; 
		END IF;
	END$$
	DELIMITER ;

-- FIND THE NUMBER IS PRIMER OR COMPOSITE
	DELIMITER $$
	CREATE PROCEDURE IS_PRIME(IN A INTEGER)
	BEGIN
		DECLARE COUNT INTEGER; 
		DECLARE NUM INTEGER; 
		SET NUM=0;
		SET COUNT=0;
		WHILE NUM<=A/2 DO
			IF A%NUM=0 THEN
				SET COUNT=COUNT+1;
			END IF;
			SET NUM=NUM+1; 
		END WHILE;
		
		IF COUNT=0 THEN
			SELECT 'THE NUMBER IS PRIME'; 
		ELSE 
			SELECT 'THE NUMBER IS COMPOSITE'; 
		END IF;	
	END $$



-- for loop in procedure:

declare n integer default 0;
for r as
	select age from patients
do	
	set n = n + age
end for


-- functions
create function disease_count (disease_name varchar(45)) returns int  deterministic
               begin
               declare d_count  int default 0;
                      select count(1) into d_count
                      from Diagnosis
                      where disease = disease_name;
               return d_count;
       end//
delimiter ;



-- PROCEDURE BASICS UNDERSTANDING -> https://www.youtube.com/watch?v=9uL_-rZHFlg&t
-- PROCEDURE PROBLEM SOLVING TUTORIAL -> https://www.youtube.com/watch?v=dLfMBic1Szk
