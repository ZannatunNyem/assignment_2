-- Active: 1748140249333@@127.0.0.1@5432@conservation_db
--TABLE-1 rangers--
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(100)
);

INSERT INTO rangers (name, region) VALUES
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range'); 

SELECT * FROM rangers;

DROP TABLE rangers;

--TABLE-2 species--
CREATE TABLE species(
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100),
    scientific_name VARCHAR(150),
    discovery_date DATE,
    conservation_status VARCHAR(100)
);
INSERT INTO species (species_id, common_name, scientific_name, discovery_date, conservation_status) 
VALUES
(1, 'Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
(2, 'Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
(3, 'Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
(4, 'Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');


SELECT * FROM species;

--TABLE-3 species--
CREATE TABLE sightings(
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INTEGER REFERENCES "rangers"(ranger_id),
    species_id INTEGER REFERENCES "species"(species_id),
    sighting_time TIMESTAMP,
    location VARCHAR(50)
);

INSERT INTO sightings (species_id, ranger_id, location, sighting_time) VALUES
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00'),
(1, 2, 'Snowfall Pass', '2024-05-18 18:30:00');

SELECT * FROM sightings;
DROP TABLE sightings;
-------problem-1-----
INSERT INTO rangers (name, region)
VALUES ('Derek Fox', 'Coastal Plains');

-------problem-2-----
SELECT count(DISTINCT species_id) AS unique_species_count
FROM sightings;

-------problem-3-----
SELECT * FROM sightings 
WHERE location LIKE '%Pass%';

-------problem-4-----
SELECT name, COUNT(DISTINCT sightings.sighting_id) AS total_sightings
FROM sightings
JOIN rangers ON rangers.ranger_id = sightings.ranger_id
GROUP BY name;

-------problem-5-----
SELECT species.common_name
FROM species
LEFT JOIN sightings ON species.species_id = sightings.species_id
WHERE sightings.species_id IS NULL;

-------problem-6-----
SELECT species.common_name, sightings.sighting_time, rangers.name FROM sightings
JOIN rangers ON sightings.ranger_id = rangers.ranger_id
JOIN species ON sightings.species_id = species.species_id
ORDER BY sightings.sighting_time DESC
LIMIT 2;

-------problem-7-----
UPDATE species
SET conservation_status = 'Historic'
WHERE discovery_date < '1800-01-01';

-------problem-8-----
CREATE OR REPLACE VIEW time_of_day AS
SELECT sighting_id,
CASE WHEN EXTRACT(HOUR FROM sighting_time) < 12 THEN 'Morning'
WHEN EXTRACT(HOUR FROM sighting_time) BETWEEN 12 AND 17 THEN 'Afternoon'
ELSE 'Evening'
END AS time_of_day FROM sightings;
SELECT * FROM time_of_day;
-------problem-9-----

DELETE FROM rangers
WHERE ranger_id NOT IN (SELECT ranger_id FROM sightings);

