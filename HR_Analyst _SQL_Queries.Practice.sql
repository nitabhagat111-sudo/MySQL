USE hr_analyst;
SELECT(ï»¿EmpID)AS list_of_Employees
FROM hr_analyst.hr_analytics
Where Attrition='Yes';
SELECT(Department),AVG(Age)AS AVG_Age
FROM hr_analyst.hr_analytics
GROUP BY Department;
SELECT(ï»¿EmpID),JobSatisfaction
FROM hr_analyst.hr_analytics
Where` JobSatisfaction`=4;
SELECT(ï»¿EmpID),'Research & Development'
FROM hr_analyst.hr_analytics
where Department='Research & Development';
SELECT JobRole,SUM(MonthlyIncome)AS Totla_Monthly_Income
FROM hr_analyst.hr_analytics
GROUP BY JobRole;
SELECT AgeGroup ,COUNT(ï»¿EmpID)AS Total_Employees
FROM hr_analyst.hr_analytics
GROUP BY AgeGroup;
SELECT AVG(PercentSalaryHike)AS AVG_Percent_Salary_Hike
FROM hr_analyst.hr_analytics
Where OverTime='yes';
SELECT MAX(TotalWorkingYears)AS Maximum_Working_Years
FROM hr_analyst.hr_analytics;
SELECT(Department),AVG(EnvironmentSatisfaction)AS EnvironmentSatisfaction
FROM hr_analyst.hr_analytics
GROUP BY Department
ORDER BY EnvironmentSatisfaction DESC;
SELECT AVG(YearsAtCompany)AS AVG_Years_At_Company
FROM hr_analyst.hr_analytics
GROUP BY EducationField;
SELECT(ï»¿EmpID), (MonthlyIncome)
FROM hr_analyst.hr_analytics
ORDER BY MonthlyIncome DESC
LIMIT 10;
SELECT(ï»¿EmpID),NumCompaniesWorked
FROM hr_analyst.hr_analytics
Where NumCompaniesWorked>3;
SELECT(ï»¿EmpID),JobLevel,Department
FROM hr_analyst.hr_analytics
WHERE JobLevel=(SELECT MAX(JobLevel)
FROM hr_analyst.hr_analytics)AND Department='Sales';
SELECT(MaritalStatus),MIN(DistanceFromHome)AS least_distance
FROM hr_analyst.hr_analytics
GROUP BY MaritalStatus;
select AgeGroup,SUM(TrainingTimesLastYear)AS total_training_times_last_year
FROM hr_analyst.hr_analytics
GROUP BY AgeGroup;
SELECT(JobRole),AVG(YearsInCurrentRole)AS AVG_Years_in_current_role
FROM hr_analyst.hr_analytics
GROUP BY JobRole;
SELECT(ï»¿EmpID)
FROM hr_analyst.hr_analytics
Where(YearsSinceLastPromotion >5);
SELECT ï»¿EmpID
FROM hr_analyst.hr_analytics
where YearsWithCurrManager>10;
SELECT ï»¿EmpID,YearsAtCompany
FROM hr_analyst.hr_analytics
where YearsAtCompany >(SELECT AVG(YearsAtCompany)
FROM hr_analyst.hr_analytics);
