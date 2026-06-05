create table if not EXISTS nobel_win(
    year integer,
    subject text,
    winner text,
    country text,
    category text
);

insert into nobel_win (year, subject, winner, country, category) VALUES
(1970, 'PHYSICS', 'HANNIES', 'SWEDEN', 'SCIENTIST'),
(1970, 'PHYSICS', 'LOUIS NEEL', 'FRANCE', 'SCIENTIST'),
(1971, 'PHYSICS', 'PAUL', 'FRANCE', 'SCIENTIST'),
(1971, 'CHEMISTRY', 'HAMILTON', 'SWEDEN', 'LINGUIST'),
(1972, 'LITERATURE', 'BERNARD KELSON', 'GERMANY', 'ECONOMIST'),
(1972, 'ECONOMICS', 'JOSEPH', 'RUSSIA', 'ECONOMIST'),
(1973, 'BIOLOGY', 'PHILIPS', 'USA', 'PRIME MINISTER'),
(1980, 'BIOLOGY', 'MARTIN', 'USA', 'PRESIDENT'),
(1981, 'PHYSIOLOGY', 'HANNAH', 'HUNGARY', 'SCIENTIST'),
(1975, 'PHYSICS', 'PETER', 'CHILE', 'SCIENTIST');

SELECT * 
FROM nobel_win
WHERE SUBJECT NOT LIKE 'P%';