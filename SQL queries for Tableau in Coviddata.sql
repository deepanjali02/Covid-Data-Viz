SELECT SUM(new_cases) AS total_cases, SUM((new_deaths)) AS total_deaths, SUM((new_deaths))/SUM(New_Cases)*100 AS Death_Percentage
FROM coviddata.covid_deaths
WHERE continent is not null
ORDER BY 1,2;

SELECT location, SUM(new_deaths) AS Total_Death_Count
FROM coviddata.covid_deaths
WHERE location in ('Asia', 'Africa', 'Europe', 'Oceania', 'South America', 'North America') 
GROUP BY location
ORDER BY Total_Death_Count DESC;

SELECT location, population, MAX(total_cases) AS Highest_infection_count,
							 MAX((total_cases/population))*100 AS Percent_Population_infected
FROM coviddata.covid_deaths
GROUP BY location, population
ORDER BY Percent_Population_infected DESC;

SELECT location, population, dateinfo, MAX(total_cases) AS Highest_infection_count,
							 MAX((total_cases/population))*100 AS Percent_Population_infected
FROM coviddata.covid_deaths
GROUP BY location, population, dateinfo
ORDER BY Percent_Population_infected DESC;


