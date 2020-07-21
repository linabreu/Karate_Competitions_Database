---creates the tournament info table which is an auxilary table that keeps track of tournament information such as location, date and host school. 
---this table is not referenced in any other tables but I though it would be nice to have


USE Karate

CREATE Table TournamentInfo (

TournID Int NOT NULL,
TournName	VarChar(50),
TournDate Date,
HostSchool VarChar(50),
VenueName VarChar(50),
PRIMARY KEY (TournID)

);
