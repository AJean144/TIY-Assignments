-- Select every team from the NFC North 
SELECT * FROM teams WHERE conference='NFC' AND division='North';

-- Select every team with at least 11 wins 
SELECT * FROM teams WHERE wins = 11;

-- Select every team with at least 8 wins that did not make the playoffs
SELECT * FROM teams WHERE wins=8 AND playoff != 'TRUE';

-- Rename every team with fewer than 4 wins "Losers"
UPDATE teams SET name = "Losers" WHERE wins < 4;

-- Select every team that plays in a city of fewer than 5 million people, and the name of the city
SELECT teams.*, cities.name FROM teams, cities
	WHERE teams.city_id = cities.id AND
	cities.population_2013 < 5000000;

-- Select every AFC team that plays in a city that is shrinking in population
SELECT teams.*, cities.population_change FROM teams, cities
	WHERE teams.city_id = cities.id AND
	cities.population_change < 0 AND
	conference = 'AFC';

-- Select every city that has a team
SELECT cities.name, teams.* FROM cities, teams
	WHERE cities.id = teams.city_id;

-- Select every state that has a team
SELECT states.*, cities.state_id, teams.city_id FROM
	states, cities, teams WHERE
	states.id = cities.state_id AND
	teams.city_id = cities.id;

-- Select every team that plays in California
SELECT states.abbr, cities.state_id, teams.* FROM
	states, cities, teams WHERE
	states.abbr='CA' AND
	cities.state_id = states.id AND
	teams.city_id = cities.id;


