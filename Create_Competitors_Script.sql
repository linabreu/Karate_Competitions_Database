--creates the competitors table


USE KARATE

CREATE TABLE Competitors (

CompetitorID Int NOT NULL,
FirstName VarChar(50),
LastName VarChar(50),
Birthday Date,
Age Int,
DojoName VarChar(50),
InstructorName VarChar(50),
Phone VarChar (50),
Email VarChar (50),
Address1 VarChar (50),
Address2 VarChar (50),
City VarChar (50),
[State] VarChar (50),
ZipCode VarChar (50),
PRIMARY KEY (CompetitorID)

);

