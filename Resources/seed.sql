CREATE TABLE pokemon_factories(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
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
type_1_id INTEGER,
type_2_id INTEGER
);

create table type(
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	type_id INTEGER,
	type TEXT
);
create table type_effectiveness(
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	attack_type_id INTEGER NOT NULL,
	defense_type_id INTEGER NOT NULL,
	multiplier REAL NOT NULL
);

INSERT INTO type VALUES(NULL, 0, 'Normal');
INSERT INTO type VALUES(NULL, 1, 'Fire');
INSERT INTO type VALUES(NULL, 2, 'Water');
INSERT INTO type VALUES(NULL, 3, 'FLying');
INSERT INTO type VALUES(NULL, 4, 'Grass');
INSERT INTO type VALUES(NULL, 5, 'Poison');
INSERT INTO type VALUES(NULL, 6, 'Electric');
INSERT INTO type VALUES(NULL, 7, 'Ground');
INSERT INTO type VALUES(NULL, 8, 'Psychic');
INSERT INTO type VALUES(NULL, 9, 'Rock');
INSERT INTO type VALUES(NULL, 10, 'Ice');
INSERT INTO type VALUES(NULL, 11, 'Bug');
INSERT INTO type VALUES(NULL, 12, 'Dragon');
INSERT INTO type VALUES(NULL, 13, 'Ghost');
INSERT INTO type VALUES(NULL, 14, 'Dark');
INSERT INTO type VALUES(NULL, 15, 'Steel');
INSERT INTO type VALUES(NULL, 16, 'Fairy');
INSERT INTO type VALUES(NULL, 17, 'Fighting');

INSERT INTO type_effectiveness VALUES(NULL, 0, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 9, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 0, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 13, 0);
INSERT INTO type_effectiveness VALUES(NULL, 0, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 15, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 0, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 1, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 1, 2, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 1, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 4, 2);
INSERT INTO type_effectiveness VALUES(NULL, 1, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 7, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 1, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 9, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 1, 10, 2);
INSERT INTO type_effectiveness VALUES(NULL, 1, 11, 2);
INSERT INTO type_effectiveness VALUES(NULL, 1, 12, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 1, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 15, 2);
INSERT INTO type_effectiveness VALUES(NULL, 1, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 1, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 1, 2);
INSERT INTO type_effectiveness VALUES(NULL, 2, 2, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 2, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 4, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 2, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 6, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 2, 7, 2);
INSERT INTO type_effectiveness VALUES(NULL, 2, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 9, 2);
INSERT INTO type_effectiveness VALUES(NULL, 2, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 12, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 2, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 15, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 2, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 4, 2);
INSERT INTO type_effectiveness VALUES(NULL, 3, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 6, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 3, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 9, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 3, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 11, 2);
INSERT INTO type_effectiveness VALUES(NULL, 3, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 3, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 3, 17, 2);
INSERT INTO type_effectiveness VALUES(NULL, 4, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 4, 1, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 4, 2, 2);
INSERT INTO type_effectiveness VALUES(NULL, 4, 3, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 4, 4, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 4, 5, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 4, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 4, 7, 2);
INSERT INTO type_effectiveness VALUES(NULL, 4, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 4, 9, 2);
INSERT INTO type_effectiveness VALUES(NULL, 4, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 4, 11, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 4, 12, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 4, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 4, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 4, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 4, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 4, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 4, 2);
INSERT INTO type_effectiveness VALUES(NULL, 5, 5, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 5, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 7, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 5, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 9, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 5, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 11, 2);
INSERT INTO type_effectiveness VALUES(NULL, 5, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 13, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 5, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 5, 15, 0);
INSERT INTO type_effectiveness VALUES(NULL, 5, 16, 2);
INSERT INTO type_effectiveness VALUES(NULL, 5, 17, 0.5);
/* inserted */
INSERT INTO type_effectiveness VALUES(NULL, 6, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 2, 2);
INSERT INTO type_effectiveness VALUES(NULL, 6, 3, 2);
INSERT INTO type_effectiveness VALUES(NULL, 6, 4, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 6, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 6, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 6, 7, 0);
INSERT INTO type_effectiveness VALUES(NULL, 6, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 12, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 6, 13, 0);
INSERT INTO type_effectiveness VALUES(NULL, 6, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 15, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 6, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 1, 2);
INSERT INTO type_effectiveness VALUES(NULL, 7, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 3, 0);
INSERT INTO type_effectiveness VALUES(NULL, 7, 4, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 7, 5, 2);
INSERT INTO type_effectiveness VALUES(NULL, 7, 6, 2);
INSERT INTO type_effectiveness VALUES(NULL, 7, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 9, 2);
INSERT INTO type_effectiveness VALUES(NULL, 7, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 11, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 7, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 15, 2);
INSERT INTO type_effectiveness VALUES(NULL, 7, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 7, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 5, 2);
INSERT INTO type_effectiveness VALUES(NULL, 8, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 8, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 8, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 13, 0);
INSERT INTO type_effectiveness VALUES(NULL, 8, 14, 0);
INSERT INTO type_effectiveness VALUES(NULL, 8, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 8, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 8, 17, 2);
INSERT INTO type_effectiveness VALUES(NULL, 9, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 1, 2);
INSERT INTO type_effectiveness VALUES(NULL, 9, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 3, 2);
INSERT INTO type_effectiveness VALUES(NULL, 9, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 7, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 9, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 10, 2);
INSERT INTO type_effectiveness VALUES(NULL, 9, 11, 2);
INSERT INTO type_effectiveness VALUES(NULL, 9, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 9, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 9, 17, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 10, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 1, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 10, 2, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 10, 3, 2);
INSERT INTO type_effectiveness VALUES(NULL, 10, 4, 2);
INSERT INTO type_effectiveness VALUES(NULL, 10, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 7, 2);
INSERT INTO type_effectiveness VALUES(NULL, 10, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 10, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 10, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 12, 2);
INSERT INTO type_effectiveness VALUES(NULL, 10, 13, 0);
INSERT INTO type_effectiveness VALUES(NULL, 10, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 10, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 10, 17, 1);
/* inserted */
INSERT INTO type_effectiveness VALUES(NULL, 11, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 1, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 11, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 3, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 11, 4, 2);
INSERT INTO type_effectiveness VALUES(NULL, 11, 5, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 11, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 8, 2);
INSERT INTO type_effectiveness VALUES(NULL, 11, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 11, 13, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 11, 14, 2);
INSERT INTO type_effectiveness VALUES(NULL, 11, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 11, 16, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 11, 17, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 12, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 12, 2);
INSERT INTO type_effectiveness VALUES(NULL, 12, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 12, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 12, 16, 0);
INSERT INTO type_effectiveness VALUES(NULL, 12, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 0, 0);
INSERT INTO type_effectiveness VALUES(NULL, 13, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 8, 2);
INSERT INTO type_effectiveness VALUES(NULL, 13, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 13, 2);
INSERT INTO type_effectiveness VALUES(NULL, 13, 14, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 13, 15, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 13, 17, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 1, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 8, 2);
INSERT INTO type_effectiveness VALUES(NULL, 14, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 13, 2);
INSERT INTO type_effectiveness VALUES(NULL, 14, 14, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 14, 15, 1);
INSERT INTO type_effectiveness VALUES(NULL, 14, 16, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 14, 17, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 15, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 1, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 15, 2, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 15, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 5, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 9, 2);
INSERT INTO type_effectiveness VALUES(NULL, 15, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 12, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 14, 1);
INSERT INTO type_effectiveness VALUES(NULL, 15, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 15, 16, 2);
INSERT INTO type_effectiveness VALUES(NULL, 15, 17, 1);
/* Inserted */
INSERT INTO type_effectiveness VALUES(NULL, 16, 0, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 1, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 16, 2, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 3, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 4, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 5, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 16, 6, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 7, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 8, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 9, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 10, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 11, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 12, 2);
INSERT INTO type_effectiveness VALUES(NULL, 16, 13, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 14, 2);
INSERT INTO type_effectiveness VALUES(NULL, 16, 15, 0.5);
INSERT INTO type_effectiveness VALUES(NULL, 16, 16, 1);
INSERT INTO type_effectiveness VALUES(NULL, 16, 17, 2);

INSERT INTO pokemon_factories VALUES(NULL, 'Eevee', 115, 162, 54, 117, 49, 112, 45, 106, 63, 128, 54, 117, 0, 0);
INSERT INTO pokemon_factories VALUES(NULL, 'Pikachu', 95, 142, 54, 117, 40, 101, 49, 112, 49, 112,85 , 156, 6, 6);
INSERT INTO pokemon_factories VALUES(NULL, 'Squirtle', 104, 151, 47, 110, 63, 128, 49, 112, 62, 127, 43, 104, 2, 2);
INSERT INTO pokemon_factories VALUES(NULL, 'Lucario', 130, 177, 135, 216, 83, 154, 130, 211, 67, 134, 105, 180, 17, 15);
INSERT INTO pokemon_factories VALUES(NULL, 'Emolga', 115, 162, 72, 139, 58, 123, 72, 139, 58, 123, 97, 170, 6, 3);
INSERT INTO pokemon_factories VALUES(NULL, 'Pachirisu', 120, 167, 45, 106, 67, 134, 45, 106, 85, 156, 90, 161, 6, 6);
INSERT INTO pokemon_factories VALUES(NULL, 'Bulbasaur', 105, 152, 48, 111, 48, 111, 63, 128, 63, 128, 45, 106, 4, 4);
INSERT INTO pokemon_factories VALUES(NULL, 'Charmander', 99, 146, 51, 114, 43, 104, 58, 123, 49, 112, 63, 128, 1, 1);
INSERT INTO pokemon_factories VALUES(NULL, 'Jumpluff', 135, 182, 54, 117, 67, 134, 54, 117, 90, 161, 103, 178, 4, 3);
INSERT INTO pokemon_factories VALUES(NULL, 'Shuckle', 87, 127, 13, 68, 211, 310, 13, 68, 211, 310, 9, 62, 11, 9);
INSERT INTO pokemon_factories VALUES(NULL, 'Arcanine', 150, 197, 103, 178, 76, 145, 94, 167, 76, 145, 90, 161, 1, 1);
INSERT INTO pokemon_factories VALUES(NULL, 'Shedinja', 1, 1, 85, 156, 45, 106, 31, 90, 31, 90, 40, 101,  11, 13);
INSERT INTO pokemon_factories VALUES(NULL, 'Yanma', 125, 172, 45, 106, 72, 139, 45, 106, 72, 139, 90, 161, 11, 3);
INSERT INTO pokemon_factories VALUES(NULL, 'Blissey', 315, 362, 13, 68, 13, 68, 72, 139, 126, 205, 54, 117, 0, 0);
INSERT INTO pokemon_factories VALUES(NULL, 'Flareon', 125, 172, 121, 200, 58, 123, 90, 161, 103, 178, 63, 128,  1, 1);
INSERT INTO pokemon_factories VALUES(NULL, 'Umbreon', 155, 202, 63, 128, 103, 178, 58, 123, 121, 200, 63, 128,  14, 14);
INSERT INTO pokemon_factories VALUES(NULL, 'Omanyte', 95, 142, 40, 101, 94, 167, 85, 156, 54, 117, 36, 95,  9, 4);
INSERT INTO pokemon_factories VALUES(NULL, 'Pidgeot', 143, 190, 76, 145, 72, 139, 67, 134, 67, 134, 95, 168, 0, 3);
INSERT INTO pokemon_factories VALUES(NULL, 'Chestnaught', 148, 195, 100, 174, 114, 191, 71, 138, 72, 139, 62, 127, 4, 17);
INSERT INTO pokemon_factories VALUES(NULL, 'Sylveon',  155, 202, 63, 128, 63, 128, 103, 178, 121, 200, 58, 123, 16, 16);
INSERT INTO pokemon_factories VALUES(NULL, 'Umbreon', 155, 202, 63, 128, 103, 178, 58, 123, 121, 200, 63, 128,  14, 14);
insert into pokemon_factories values(NULL,'Flygon', 140, 187, 94, 167, 76, 145, 76, 145, 76, 145, 94, 167, 7, 12);
insert into pokemon_factories values(NULL,'Togekiss', 145, 192, 49, 112, 90, 161, 112, 189, 108, 183, 76, 284, 16, 3);
insert into pokemon_factories values(NULL, 'Wobbuffet', 250, 297, 33, 93, 56, 121, 34, 93, 56, 121, 34, 93, 8, 8);
INSERT INTO pokemon_factories VALUES(NULL, 'Mismagius', 120, 167, 58, 123, 58, 123, 99, 172, 99, 172, 99, 172,  13, 13);
INSERT INTO pokemon_factories VALUES(NULL, 'Gengar', 120, 167, 63, 128, 58, 123, 121, 200, 72, 139, 103, 178,  14, 5);
INSERT INTO pokemon_factories VALUES(NULL, 'Sunflora', 136, 182, 72, 139, 54, 117, 99, 172, 81, 150, 31, 90, 4, 4);
insert into pokemon_factories values(NULL,'Flygon', 140, 187, 94, 167, 76, 145, 76, 145, 76, 145, 94, 167, 7, 12);
insert into pokemon_factories values(NULL,'Togekiss', 145, 192, 49, 112, 90, 161, 112, 189, 108, 183, 76, 284, 16, 3);
insert into pokemon_factories values(NULL, 'Wobbuffet', 250, 297, 33, 93, 56, 121, 34, 93, 56, 121, 34, 93, 8, 8);
INSERT INTO pokemon_factories VALUES(NULL, 'Mismagius', 120, 167, 58, 123, 58, 123, 99, 172, 99, 172, 99, 172,  13, 13);
INSERT INTO pokemon_factories VALUES(NULL, 'Gengar', 120, 167, 63, 128, 58, 123, 121, 200, 72, 139, 103, 178,  14, 5);
INSERT INTO pokemon_factories VALUES(NULL, 'Sunflora', 136, 182, 72, 139, 54, 117, 99, 172, 81, 150, 31, 90, 4, 4);
INSERT INTO pokemon_factories VALUES(NULL, 'Sandslash', 135, 182, 94, 167, 103, 178, 45, 106, 54, 117, 63, 128,  7, 7);
INSERT INTO pokemon_factories VALUES(NULL, 'Dugtrio', 95, 142, 76, 145, 49, 112, 49, 112, 67, 134, 112, 189,  7, 7);
INSERT INTO pokemon_factories VALUES(NULL, 'Sandslash', 135, 182, 94, 167, 103, 178, 45, 106, 54, 117, 63, 128,  7, 7);
INSERT INTO pokemon_factories VALUES(NULL, 'Lopunny', 125, 172, 72, 140, 80, 149, 53, 116, 90, 162, 99, 172,  0, 0);
INSERT INTO pokemon_factories VALUES(NULL, 'Roserade', 120, 167, 67, 134, 54, 117, 117, 194, 99, 172, 85, 156,  4, 5);
INSERT INTO pokemon_factories VALUES(NULL, 'Butterfree', 120, 167, 45, 106, 49, 112, 85, 156, 76, 145, 67, 134,  3, 11);
INSERT INTO pokemon_factories VALUES(NULL, 'Aurorus', 183, 230, 73, 141, 69, 136, 93, 166, 87, 158, 56, 121, 9, 10);
INSERT INTO pokemon_factories VALUES(NULL, 'Gardevoir', 128, 175, 63, 128, 63, 128, 117, 194, 108, 183, 76, 145, 8, 16);
INSERT INTO pokemon_factories VALUES(NULL, 'Gallade', 128, 175, 117, 194, 63, 128, 63, 128, 108, 183, 76, 145,  8, 17);
INSERT INTO pokemon_factories VALUES(NULL, 'Skarmory', 125, 172, 76, 145, 130, 211, 40, 101, 67, 134, 67, 134,  15, 3);
INSERT INTO pokemon_factories VALUES(NULL, 'Luxray', 140, 187, 112, 189, 75, 144, 90, 161, 75, 144, 67, 134,  6, 6);
INSERT INTO pokemon_factories VALUES(NULL, 'Greninja', 132, 179, 90, 161, 64, 130, 97, 170, 68, 135, 114, 191, 2, 14);
INSERT INTO pokemon_factories VALUES(NULL, 'Zoroark', 120, 167, 99, 172, 58, 123, 112, 189, 58, 123, 99, 172, 14, 14);
INSERT INTO pokemon_factories VALUES(NULL, 'Tyrantrum', 149, 189, 113, 190, 111, 188, 66, 133, 57, 122, 68, 135, 9, 12);
INSERT INTO pokemon_factories VALUES(NULL, 'Miltank', 155, 202, 76, 145, 99, 172, 40, 101, 67, 134, 94, 167, 0, 0);
INSERT INTO pokemon_factories VALUES(NULL, 'Electivire', 135, 182, 115, 192, 64, 130, 90, 161, 81, 150, 90, 161, 7, 7);
INSERT INTO pokemon_factories VALUES(NULL, 'Ninetails', 133, 180, 72, 140, 72, 139, 72, 146, 94, 167, 94, 167, 1, 1);
INSERT INTO pokemon_factories VALUES(NULL, 'Wigglytuff', 200, 247, 67, 134, 45, 106, 81, 150, 49, 112, 45, 106, 0, 16);
INSERT INTO pokemon_factories VALUES(NULL, 'Aegislash', 120, 167, 139, 222, 49, 112, 139, 222, 49, 112, 58, 123, 15, 13);
INSERT INTO pokemon_factories VALUES(NULL, 'Garchomp', 168, 215, 121, 200, 90, 161, 76, 145, 81, 150, 96, 169, 12, 7);
INSERT INTO pokemon_factories VALUES(NULL, 'Tyrantrum', 149, 189, 113, 190, 111, 188, 66, 133, 57, 122, 68, 135, 9, 12);
INSERT INTO pokemon_factories VALUES(NULL, 'Mienshao', 125, 172, 117, 194, 58, 123, 90, 161, 58, 123, 99, 172, 17, 17);
INSERT INTO pokemon_factories VALUES(NULL, 'Sharpedo', 130, 177, 112, 189, 40, 101, 90, 161, 40, 101, 90, 161, 2, 14);











