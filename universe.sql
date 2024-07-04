CREATE DATABASE universe;

\c universe

-- CREATE TABLE
CREATE TABLE galaxy (
    galaxy_id SERIAL NOT NULL,
    name VARCHAR(200) UNIQUE,
    age INT,
    area INT,
    description TEXT
);

CREATE TABLE star (
    star_id SERIAL NOT NULL,
    galaxy_id INTEGER NOT NULL,
    name VARCHAR(200) UNIQUE,
    area INT,
    description TEXT
);

CREATE TABLE planet (
    planet_id SERIAL NOT NULL,
    star_id INTEGER NOT NULL,
    name VARCHAR(200) UNIQUE,
    population INT,
    density INT,
    age NUMERIC,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE moon (
    moon_id SERIAL NOT NULL,
    planet_id INTEGER NOT NULL,
    name VARCHAR(200) UNIQUE,
    area INT,
    description TEXT
);

CREATE TABLE log (
    log_id SERIAL NOT NULL,
    name VARCHAR(200) UNIQUE NOT NULL,
    description TEXT NOT NULL
);

-- INSERT
INSERT INTO galaxy VALUES 
(1, 'Galaxie 1', 500),
(2, 'Galaxie 2', 600),
(3, 'Galaxie 3', 650),
(4, 'Galaxie 4', 670),
(5, 'Galaxie 5', 695),
(6, 'Galaxie 6', 702);

INSERT INTO star VALUES 
(1, 1, 'Etoile 1', 500),
(2, 2, 'Etoile 2', 600),
(3, 3, 'Etoile 3', 650),
(4, 4, 'Etoile 4', 670),
(5, 5, 'Etoile 5', 695),
(6, 6, 'Etoile 6', 702);

INSERT INTO planet VALUES
(1,1,'Planète 1',10,10,10,true,true),
(2,1,'Planète 2',10,10,10,true,true),
(3,2,'Planète 3',10,10,10,true,true),
(4,2,'Planète 4',10,10,10,true,true),
(5,3,'Planète 5',10,10,10,true,true),
(6,3,'Planète 6',10,10,10,true,true),
(7,4,'Planète 7',10,10,10,true,true),
(8,4,'Planète 8',10,10,10,true,true),
(9,5,'Planète 9',10,10,10,true,true),
(10,5,'Planète 10',10,10,10,true,true),
(11,6,'Planète 11',10,10,10,true,true),
(12,6,'Planète 12',10,10,10,true,true);

INSERT INTO moon VALUES
(1,1,'Lune 1'),
(2,1,'Lune 2'),
(3,2,'Lune 3'),
(4,3,'Lune 4'),
(5,3,'Lune 5'),
(6,4,'Lune 6'),
(7,5,'Lune 7'),
(8,5,'Lune 8'),
(9,5,'Lune 9'),
(10,6,'Lune 10'),
(11,7,'Lune 11'),
(12,8,'Lune 12'),
(13,8,'Lune 13'),
(14,9,'Lune 14'),
(15,9,'Lune 15'),
(16,9,'Lune 16'),
(17,10,'Lune 17'),
(18,11,'Lune 18'),
(19,12,'Lune 19'),
(20,12,'Lune 20');

INSERT INTO log VALUES
(1,'Discover','New'),
(2,'Explore','Wow'),
(3,'Transform','Yay');

-- PRIMARY AND FOREIGN KEY

ALTER TABLE galaxy ADD PRIMARY KEY (galaxy_id);
ALTER TABLE star ADD PRIMARY KEY (star_id);
ALTER TABLE planet ADD PRIMARY KEY (planet_id);
ALTER TABLE moon ADD PRIMARY KEY (moon_id);
ALTER TABLE log ADD PRIMARY key (log_id);

ALTER TABLE star ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id);
ALTER TABLE planet ADD FOREIGN KEY (star_id) REFERENCES star (star_id);
ALTER TABLE moon ADD FOREIGN KEY (planet_id) REFERENCES planet (planet_id);