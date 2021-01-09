CREATE TABLE tournament_games(
id SERIAL PRIMARY KEY,
Year INT,
Round INT,
	Seed_1 INT,
	College_1 VARCHAR,
	College_2 VARCHAR,
	Seed_2 INT
);

CREATE TABLE draft_picks(
id SERIAL PRIMARY KEY,
Player VARCHAR,
Draft_Yr Int,
College VARCHAR
);

SELECT * FROM tournament_games;
SELECT * FROM draft_picks;

DROP TABLE tournament_games;
DROP TABLE draft_picks;

SELECT t.year, t.round, t.seed_1, t.college_1, t.college_2, t.seed_2, d.player, d.draft_yr, d.college 
FROM tournament_games as t
JOIN draft_picks as d
ON t.id = d.id;
WHERE t.college_1 LIKE d.college 
OR t.college_2 LIKE d.college;

SELECT t.year, t.college_1, t.college_2, d.player
FROM tournament_games as t
JOIN draft_picks as d
ON t.id=d.id
WHERE college_1 = 'Bradley'
OR college_2 = 'Bradley';