--No of atheletes from each country
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes_table
GROUP BY Country
ORDER BY TotalAthletes DESC;

---No of medals won by each country
SELECT 
Team_Country,
SUM(Gold) AS Total_Gold,
SUM(Silver)AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals_table
GROUP BY Team_Country

---Top 10 Countries with the most medals
SELECT TOP(10)Team_Country, 
SUM(Gold) AS Total_Gold,
SUM(Silver) AS Total_Silver,
SUM(Bronze) AS Total_Bronze,
SUM(Total) AS Total_Medals
FROM medals_table
GROUP BY Team_Country
ORDER BY SUM(Total) DESC;

---Top 10 Countries with gold medals
SELECT TOP(10)Team_Country,
SUM(Gold) AS Total_Gold,
SUM(Silver) AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals_table
GROUP BY Team_Country
ORDER BY Total_Gold DESC;

--No of Medals won by India
SELECT * 
FROM medals_table
WHERE Team_Country in ('India');

--Average number of medals for each discipline for each gender
SELECT Discipline,
AVG(Female) AS Avg_Female,
AVG(Male) AS Avg_Male
FROM entriesgender_table
GROUP BY Discipline;

--Top 5 countries with highest number of coaches 
SELECT TOP(5)Country, Count(Name) As TotalCoaches
from coaches_table
GROUP BY Country
ORDER BY TotalCoaches DESC;
