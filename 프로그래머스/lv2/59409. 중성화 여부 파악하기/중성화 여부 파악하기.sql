-- 코드를 입력하세요

SELECT ANIMAL_ID, NAME, 
       DECODE(SUBSTR(SEX_UPON_INTAKE,1, INSTR(SEX_UPON_INTAKE, ' ')), 
       'Neutered ','O','Spayed ','O','X') AS 중성화 
       FROM ANIMAL_INS
       ORDER BY ANIMAL_ID


