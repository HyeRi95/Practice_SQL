-- 코드를 입력하세요
SELECT SUBSTR(PRICE,0,1)*10000 AS "PRICE_GROUP",COUNT(*) FROM PRODUCT 
    GROUP BY SUBSTR(PRICE,0,1)
    ORDER BY SUBSTR(PRICE,0,1)