DROP TABLE IF EXISTS Ratings

CREATE TABLE Ratings
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	AgentId INT,
	RealEstateId INT,
	StarPoint INT
)

INSERT INTO dbo.Ratings(AgentId, RealEstateId, StarPoint)
VALUES
(5, 35, 3),
(6, 35, 4),
(7, 35, 5),
(8, 35, 2),
(9, 35, 5)

SELECT *FROM Ratings