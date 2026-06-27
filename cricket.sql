CREATE TABLE team(
team_id INT PRIMARY KEY,
team_name TEXT);

CREATE TABLE match(
match_id INT PRIMARY KEY,
Season_id INTEGER,
match_winner INTEGER,
win_margin INTEGER
);

CREATE TABLE player_MATCH(
match_id INT,
player_id INT
);

INSERT INTO team VALUES 
(1, 'ROYAL CHALLENGERS'),(5, 'CHENNAI SUPER KINGS'),
(2, 'MUMBAI INDIANS'),(6, 'KINGS XI PUNJAB'),
(3, 'KOLKATA KNIGHT RIDERS'),(7, 'RAJASTHAN ROYALS'),
(4, 'DELHI CAPITALS'),(8, 'GUJARAT TITANS')
;

INSERT INTO match VALUES 
(1, 7, 5, 35),(2, 7, 5, 22),(3, 7, 5, 15),
(5, 7, 5, 5),(6, 7, 5, 2),(7, 7, 5, 1),
(8, 7, 5, 0),(9, 7, 5, -1),(10, 7, 5, -2),
(11, 7, 5, -3),(12, 7, 5, -4),(13, 7, 5, -5),
(14, 7, 5, -6),(15, 7, 5, -7),(16, 7, 5, -8),
(17, 7, 5, -9),(18, 7, 5,-10);

INSERT INTO player_MATCH VALUES 
(15, 15),(16, 16),(17, 17),(18, 18);

SELECT * FROM sqlite_master WHERE type='table';
SELECT * FROM match;
SELECT * FROM team;
