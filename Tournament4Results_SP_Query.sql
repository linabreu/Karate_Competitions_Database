/*query creates the stored procedure that generates the results from the fourth tournament (winter championships)
on the website competitors can look at this  to see thier individual results from the winter championships
*/


CREATE PROCEDURE tournament4Results AS


SELECT FirstName, LastName, DojoName, InstructorName, DivisionDesc, FinishPlace
FROM Competitors JOIN SeasonResults
	ON Competitors.CompetitorID = SeasonResults.CompetitorID
 JOIN Divisions
	ON SeasonResults.DivisionID = Divisions.DivisionID
WHERE TournamentID = 4
ORDER BY  DivisionDesc, FinishPlace ASC;