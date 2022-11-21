-- 코드를 입력하세요
SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE PRICE IN
(SELECT PRICE FROM
(SELECT CATEGORY, MAX(PRICE) AS PRICE
FROM FOOD_PRODUCT
GROUP BY CATEGORY))
AND CATEGORY IN ('과자','국','김치','식용유')
ORDER BY PRICE DESC
