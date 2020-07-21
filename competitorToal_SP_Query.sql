---creates stored procedure for the season final point count for each competitor. Will be on the results page of website



CREATE PROCEDURE getFinalCompetitorPoints AS

SELECT FirstName, LastName, DojoName, InstructorName, DivisionDesc, SUM(PointsAwarded) AS SeasonTotal
FROM Competitors JOIN SeasonResults
	ON Competitors.CompetitorID = SeasonResults.CompetitorID
 JOIN Divisions
	ON SeasonResults.DivisionID = Divisions.DivisionID
GROUP BY  FirstName, LastName, DojoName, InstructorName, DivisionDesc, PointsAwarded
ORDER BY  DivisionDesc, SeasonTotal DESC;