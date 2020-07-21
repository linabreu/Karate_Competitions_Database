---creates stored procedure for the season final point count for each dojo. Will be on the results page of website


CREATE PROCEDURE DojoTotal AS

SELECT DISTINCT DojoName, SUM(PointsAwarded) AS DojoTotal
FROM Competitors JOIN SeasonResults
	ON Competitors.CompetitorID = SeasonResults.CompetitorID
GROUP BY  DojoName
ORDER BY  DojoTotal DESC;
