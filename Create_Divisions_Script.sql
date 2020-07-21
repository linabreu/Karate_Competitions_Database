---creates the table with the competition divisions


USE Karate

CREATE TABLE Divisions (

DivisionID VarChar (50) NOT NULL,
DivisionDesc VarChar (50),
PRIMARY KEY (DivisionID)

);