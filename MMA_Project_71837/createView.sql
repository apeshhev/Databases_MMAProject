SET SCHEMA FN71837@

--VIEW1--
CREATE VIEW CHAMP_NUM
AS 
SELECT WORKCOMP, COUNT(FNO) AS COMPANY_CHAMPIONS
FROM FN71837.FIGHTERS
WHERE FSTATUS = 'C'
GROUP BY WORKCOMP@

DROP VIEW CHAMP_NUM@

SELECT * FROM CHAMP_NUM
WHERE WORKCOMP = 'UFC'@

SELECT * FROM FIGHTERS@

--VIEW2--
CREATE VIEW F_C
AS SELECT COMPNAME, SUM(SALARY) AS TOTAL_FIGHTERS_SALARY, MGR_SALARY
FROM FIGHTERS, COMPANIES
WHERE WORKCOMP = COMPNAME
GROUP BY COMPNAME,MGR_SALARY@

DROP VIEW F_C@

SELECT * FROM FIGHTERS@

SELECT * FROM F_C
WHERE COMPNAME = 'UFC'@
