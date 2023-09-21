CREATE DATABASE IF NOT EXISTS ARK;
USE ARK;
SET SQL_SAFE_UPDATES = 0; -- Unsafe

-- show tables;

CREATE TABLE IF NOT EXISTS ARKs(
ark char(10),
PRIMARY KEY(ark)
);

CREATE TABLE IF NOT EXISTS Dinos(
ark char(10),
dino_type char(20),
dino_name char(20),
Health int(10),
Stamina int(10),
Oksygen int(10),
Food int(10),
Weight int(10),
Melee int(10),
PRIMARY KEY(dino_type, dino_name), -- Dino name and type identifies the dino
FOREIGN KEY (ark) REFERENCES ARKs(ark)
);

REPLACE INTO ARKs VALUES -- Add all ARKs
('Island'),
('Center'),
('Aberration')
;

REPLACE INTO Dinos VALUES -- Add all creatures with accompanying stats
('Island', 'Rex', 'F150W224', 6820, 1638, 645, 15300, 790, 391),
('Island', 'Rex', 'M145W216', 7920, 1722, 705, 13200, 760, 370),
('Island', 'Rex', 'Funknown', 6600, 2100, 630, 12000, 780, 360),
('Center', 'Rex', 'CeM224_1', 8360, 1806, 630, 12600, 870, 391)
;

SELECT * FROM Dinos -- Look up rexes ordered by max health-stat
where dino_type = 'Rex'
order by Health;

CREATE TABLE IF NOT EXISTS Tools( -- Blueprints and singular tools
ark char(10),
tool_type char(20),
tool_name char(20),
damage int(10),
durability int(10),
PRIMARY KEY(tool_type, tool_name, damage, durability), -- Exact copys of tools are deleted, thereby unique key
FOREIGN KEY (ark) REFERENCES ARKs(ark)
);

CREATE TABLE IF NOT EXISTS Armor(
ark char(10),
armor_type char(20),
armor_name char(20),
durability int(10),
hypo int(10),
hyper int(10),
PRIMARY KEY(armor_type, armor_name, hypo, durability), -- Exact copys of tools are deleted, thereby unique key
FOREIGN KEY (ark) REFERENCES ARKs(ark)
);