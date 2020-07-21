/*query creates the stored procedure that generates the results from the first tournament (spring championships)
on the website competitors can look at this table to see thier individual results from the spring championships
*/


CREATE PROCEDURE tournament1Results AS


SELECT FirstName, LastName, DojoName, InstructorName, DivisionDesc, FinishPlace
FROM Competitors JOIN SeasonResults
	ON Competitors.CompetitorID = SeasonResults.CompetitorID
 JOIN Divisions
	ON SeasonResults.DivisionID = Divisions.DivisionID
WHERE TournamentID = 1
ORDER BY  DivisionDesc, FinishPlace ASC;