-- 코드를 입력하세요
SELECT O.ANIMAL_ID, O.NAME FROM ANIMAL_OUTS O
LEFT JOIN ANIMAL_INS I
ON (O.ANIMAL_ID = I.ANIMAL_ID)
WHERE I.ANIMAL_ID IS NULL
ORDER BY ANIMAL_ID

-- SELECT B.ANIMAL_ID AS ANIMAL_ID, B.NAME AS NAME FROM ANIMAL_OUTS B
-- MINUS
-- SELECT A.ANIMAL_ID AS ANIMAL_ID, A.NAME AS NAME FROM ANIMAL_INS A
-- ORDER BY ANIMAL_ID