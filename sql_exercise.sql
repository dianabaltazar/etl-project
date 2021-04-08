SELECT 
pd.year,
pd.state_code,
pd.state_name,
sum(nr_police) AS total_police,
sum(nr_civils) AS total_civils
FROM police_deaths pd
LEFT JOIN fatalities fa ON fa.state_code=pd.state_code
AND fa.year=pd.year
WHERE pd.year=2014
GROUP BY 1,2,3;

