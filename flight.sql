-- CREATE DATABASE flights;
USE flights;


DROP TABLE IF EXISTS users;


DROP TABLE IF EXISTS flight;

CREATE TABLE flights.flight (
	id SERIAL PRIMARY KEY,  
	from_nm varchar(100) NOT NULL,
	to_nm varchar(100) NOT NULL
);

INSERT INTO flight (from_nm, to_nm) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'irkutsk'),
  ('kazan', 'novgorod'),
  ('sainkt-peterburg', 'omsk'),
  ('moscow', 'kazan');

 
DROP TABLE IF EXISTS cites;

CREATE TABLE cites (
	id SERIAL PRIMARY KEY,
	label varchar(100) NOT NULL,
	name varchar(100) NOT NULL
);

INSERT INTO cites  (label, name) VALUES
  ('moscow', 'Москва'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('sainkt-peterburg', 'Санкт-Петербург'),
  ('omsk', 'Омск'),  
  ('irkutsk', 'Иркутск');
  

SELECT f.id, (SELECT name FROM cites WHERE cites.label = f.from_nm), (SELECT name FROM cites WHERE cites.label = f.to_nm)  FROM flight AS f;
 
