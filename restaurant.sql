CREATE TABLE IF NOT EXISTS restaurant(
name TEXT,
neighborhood TEXT,
cuisine TEXT,
review TEXT,
price TEXT,
health TEXT
);

INSERT INTO restaurant ('name, neighborhood, cuisine, review, price, health') VALUES
('PETER', 'BOOKLYN', 'STEAK', '4.5', '$$$', 'A'),
('JOHN', 'BROOKLYN', 'PIZZA', '4.0', '$$', 'B'),
('MARY', 'MANHATTAN', 'SUSHI', '4.8', '$$$$', 'A'),
('SUSAN', 'QUEENS', 'MEXICAN', '4.2', '$', 'C'),
('DAVID', 'BRONX', 'ITALIAN', '3.9', '$$', 'B'),
('LISA', 'STATEN ISLAND', 'CHINESE', '4.3', '$$$', 'A'),
('ROBERT', 'MANHATTAN', 'FRENCH', '4.6', '$$$$', 'A'),
('EMILY', 'BROOKLYN', 'THAI', '4.1', '$$', 'B'),
('MICHAEL', 'QUEENS', 'INDIAN', '4.7', '$$$', 'A'),
('SARAH', 'BRONX', 'MEDITERRANEAN', '4.0', '$$', 'C');

SELECT DISTINCT neighborhood
From restaurant;

