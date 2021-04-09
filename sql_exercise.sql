
SELECT 
pd.year,
pd.state_code,
pd.state_name,
nr_police AS nr_police_deaths,
nr_civils AS nr_police_fatalities,
population
FROM police_deaths pd
LEFT JOIN fatalities fa ON fa.state_code=pd.state_code
AND fa.year=pd.year
LEFT JOIN population po ON po.state_code=pd.state_code
AND po.year=pd.year
WHERE pd.year BETWEEN 2010 AND 2014;
