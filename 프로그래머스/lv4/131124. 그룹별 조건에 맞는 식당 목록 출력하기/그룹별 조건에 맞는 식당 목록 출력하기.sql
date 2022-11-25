-- -- -- 코드를 입력하세요
SELECT P.MEMBER_NAME, R.REVIEW_TEXT, TO_CHAR(R.REVIEW_DATE,'YYYY-MM-DD') AS REVIEW_DATE FROM REST_REVIEW R
INNER JOIN MEMBER_PROFILE P ON (R.MEMBER_ID = P.MEMBER_ID)
WHERE R.MEMBER_ID IN (
SELECT MEMBER_ID FROM(SELECT MEMBER_ID, COUNT(REVIEW_TEXT) AS COUNT FROM REST_REVIEW
GROUP BY MEMBER_ID)
WHERE COUNT = (SELECT MAX(COUNT) AS MAX FROM
(SELECT MEMBER_ID, COUNT(REVIEW_TEXT) AS COUNT FROM REST_REVIEW
GROUP BY MEMBER_ID)))
ORDER BY REVIEW_DATE, REVIEW_TEXT



               
               