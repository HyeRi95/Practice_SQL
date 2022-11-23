-- 코드를 입력하세요
SELECT A.APNT_NO,P.PT_NAME, A.PT_NO,A.MCDP_CD,DR_NAME, A.APNT_YMD 
FROM PATIENT P, APPOINTMENT A, DOCTOR D 
WHERE P.PT_NO = A.PT_NO 
  AND DR_ID = MDDR_ID
  AND  TO_CHAR(APNT_YMD,'YYYYMMDD') = '20220413' AND APNT_CNCL_YN = 'N'
  AND  A.MCDP_CD = 'CS'
  ORDER BY APNT_YMD ASC