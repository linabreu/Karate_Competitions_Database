/*creates the season results table which keeps track of all of the competitors who compete in the four seasonal tournaments
	this table references both the competitors table by competitor ID and the divisions table by division ID

*/


USE Karate

CREATE TABLE SeasonResults (

TournamentID INT NOT NULL,
CompetitorID INT NOT NULL,
DivisionID VarChar (50) NOT NULL,
FinishPlace INT,
PointsAwarded INT,

FOREIGN KEY (TournamentID) REFERENCES TournamentInfo(TournID),

FOREIGN KEY (CompetitorID) REFERENCES Competitors(CompetitorID),

FOREIGN KEY (DivisionID) REFERENCES Divisions(DivisionID)

);



