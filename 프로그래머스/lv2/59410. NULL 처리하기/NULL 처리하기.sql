-- 코드를 입력하세요
SELECT ANIMAL_TYPE, DECODE(NAME,NULL,'No name',NAME) AS NAME ,SEX_UPON_INTAKE FROM ANIMAL_INS ORDER BY ANIMAL_ID