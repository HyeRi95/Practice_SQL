-- 코드를 입력하세요
-- SELECT TO_CHAR(SALES_DATE,'YYYY') AS YEAR, SUBSTR(TO_CHAR(SALES_DATE,'MM'),2,2) AS MONTH,
--        GENDER,COUNT(DISTINCT O.USER_ID) AS USERS FROM ONLINE_SALE O
--         INNER JOIN USER_INFO U ON (O.USER_ID=U.USER_ID)
-- WHERE GENDER IS NOT NULL
-- GROUP BY TO_CHAR(SALES_DATE,'YYYY'), 
--         SUBSTR(TO_CHAR(SALES_DATE,'MM'),2,2) ,GENDER
-- ORDER BY YEAR, MONTH, GENDER ASC


SELECT TO_CHAR(B.SALES_DATE, 'YYYY') AS YEAR
     , TO_NUMBER(TO_CHAR(B.SALES_DATE, 'MM')) AS MONTH
     , A.GENDER AS GENDER
     , COUNT(DISTINCT A.USER_ID) AS USERS
  FROM USER_INFO A
    INNER JOIN ONLINE_SALE B
            ON (A.USER_ID = B.USER_ID)
 WHERE A.GENDER IS NOT NULL
 GROUP BY TO_CHAR(B.SALES_DATE, 'YYYY'), TO_NUMBER(TO_CHAR(B.SALES_DATE, 'MM')), A.GENDER
 ORDER BY YEAR, MONTH, GENDER 
