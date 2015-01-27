CREATE TABLE person (
id INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT,
age INTEGER
);
CREATE TABLE pet (
id INTEGER PRIMARY KEY,
name TEXT,
breed TEXT,
age INTEGER,
dead INTEGER
);
CREATE TABLE person_pet (
person_id INTEGER,
pet_id INTEGER
);
INSERT INTO person (id, first_name, last_name, age)
 VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

SELECT * FROM person;
SELECT name, age FROM pet;
SELECT name, age FROM pet WHERE dead = 0;
SELECT * FROM person WHERE first_name != "Zed"; 

SELECT pet.id, pet.name, pet.age, pet.dead
	FROM pet, person_pet, person
	WHERE 
	pet.id = person_pet.pet_id AND
	person_pet.person_id = person.id AND
	person.first_name = "Zed";

SELECT name, age FROM pet WHERE dead = 1;

DELETE FROM pet WHERE dead = 1;

SELECT * FROM pet;

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

SELECT * FROM pet;

DELETE FROM pet WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
    WHERE pet_id NOT IN (
        SELECT id FROM pet
    );

SELECT * FROM person_pet;

UPDATE person SET first_name = "Hilarious Guy"
    WHERE first_name = "Zed";

UPDATE pet SET name = "Fancy Pants"
    WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;

SELECT * FROM pet;

UPDATE pet SET name = "Zed's Pet" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, 'Frank', 'Smith', 100);

INSERT OR REPLACE INTO person (id, first_name, last_name, age)
	VALUES (0, 'Frank', 'Smith', 100);

SELECT * FROM person;

REPLACE INTO person (id, first_name, last_name, age)
	VALUES (0, 'Zed', 'Shaw', 37);

SELECT * FROM person;

DROP TABLE IF EXISTS person;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

ALTER TABLE person RENAME TO peoples;

ALTER TABLE peoples ADD COLUMN hatred INTEGER;

ALTER TABLE peoples RENAME TO person;

.schema person

DROP TABLE person;