SELECT * FROM 2019result.`2019 happiness data`;
SELECT SUM(Score) AS TotalScore FROM 2019result.`2019 happiness data`; 
SELECT COUNT(Country) AS NumberOfCountries FROM 2019result.`2019 happiness data`;
SELECT AVG(GDPPerCapita)AS AverageGDP FROM 2019result.`2019 happiness data`;


SELECT * FROM 2020result.`2020 happiness data`;

/* Number of countries in each region*/
SELECT RegionalIndicator, COUNT(Country)
FROM 2020result.`2020 happiness data`
GROUP BY(RegionalIndicator);

/*Countries in South Asia*/
SELECT Country,LadderScore
FROM 2020result.`2020 happiness data`
WHERE RegionalIndicator = 'South Asia';

/* Returns wether the life expectancy is below 60,60,or above 60*/
SELECT Country,
CASE WHEN HealthyLifeExpectancy > 60 THEN 'The life expectancy is greater than 60'
WHEN HealthyLifeExpectancy = 60 THEN 'The life expectancy is 60'
ELSE 'The life expectancyis under 60'
END AS LifeText
FROM 2020result.`2020 happiness data`;


SELECT Score, LadderScore
FROM 2019result.`2019 happiness data`
INNER JOIN 2020result.`2020 happiness data` ON Score=LadderScore;