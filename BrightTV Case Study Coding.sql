-- Databricks notebook source
---instructing databricks to use the brighttv database and casestudy schema
USE brighttv.casestudy;

---checking full tables
SELECT *
FROM brighttv.casestudy.user_profiles;

SELECT *
FROM brighttv.casestudy.viewership;

---gender check
SELECT DISTINCT Gender
FROM user_profiles;

---replacing Null and none with unknown
SELECT DISTINCT
    CASE
         WHEN Gender = 'None' THEN 'unknown'
         WHEN Gender = ' ' THEN 'unknown'
         WHEN Gender = 'NULL' THEN 'unknown'
ELSE Gender
END AS Sex
FROM brighttv.casestudy.user_profiles;

---Race check
SELECT DISTINCT Race
FROM brighttv.casestudy.user_profiles;

SELECT DISTINCT
    CASE
         WHEN Race = 'None' THEN 'unknown'
         WHEN Race = ' ' THEN 'unknown'
         WHEN Race = 'NULL' THEN 'unknown'
         WHEN Race = 'other' THEN 'unknown'
ELSE Race
END AS Ethnicity
FROM brighttv.casestudy.user_profiles;

SELECT DISTINCT Province
FROM brighttv.casestudy.user_profiles;

SELECT DISTINCT
    CASE
         WHEN Province = 'None' THEN 'unknown'
         WHEN Province = ' ' THEN 'unknown'
         WHEN Province = 'NULL' THEN 'unknown'
ELSE Province
END AS Region
FROM brighttv.casestudy.user_profiles;

  

