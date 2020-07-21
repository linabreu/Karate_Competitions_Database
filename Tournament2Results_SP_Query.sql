/*query creates the stored procedure that generates the results from the second tournament (summer championships)
on the website competitors can look at this table to see thier individual results from the summer championships
*/

CREATE PROCEDURE tournament2Results AS


SELECT FirstName, LastName, DojoName, InstructorName, DivisionDesc, FinishPlace
FROM Competitors JOIN SeasonResults
	ON Competitors.CompetitorID = SeasonResults.CompetitorID
 JOIN Divisions
	ON SeasonResults.DivisionID = Divisions.DivisionID
WHERE TournamentID = 2
ORDER BY  DivisionDesc, FinishPlace ASC;