CREATE TABLE pokemon_templates(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
name TEXT NOT NULL,
hp_min INTEGER,
hp_max INTEGER,
attack_min INTEGER,
attack_max INTEGER,
defense_min INTEGER,
defense_max INTEGER,
special_attack_min INTEGER,
special_attack_max INTEGER,
special_defense_min INTEGER,
special_defense_max INTEGER,
speed_min INTEGER,
speed_max INTEGER,
type_1 INTEGER,
type_2 INTEGER
);

INSERT INTO POKEMON_TEMPLATES VALUES(NULL, 'Eevee', 115, 162, 54, 117, 49, 112, 45, 106, 63, 128, 54, 117, 0, 0);
INSERT INTO POKEMON_TEMPLATES VALUES(NULL, 'Pikachu', 95, 142, 54, 117, 40, 101, 49, 112, 49, 112,85 , 156, 7, 7);
INSERT INTO POKEMON_TEMPLATES VALUES(NULL, 'Squirtle', 104, 151, 47, 110, 63, 128, 49, 112, 62, 127, 43, 104, 3, 3);
