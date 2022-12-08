USE poke;

 DROP FUNCTION IF EXISTS game_edition;
  
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS game_edition (generation smallint) 
RETURNS VARCHAR(20)
NO SQL
BEGIN
    DECLARE game_edition VARCHAR(20);
    SET game_edition = 'UNDEFINED';
    IF generation > 6 THEN            SET game_edition = 'PLATINUM';
    ELSEIF generation >= 5  THEN      SET game_edition = 'GOLD';
    ELSEIF generation >= 4  THEN      SET game_edition = 'SILVER';
    ELSEIF generation >= 3  THEN      SET game_edition = 'YELLOW';
    ELSEIF generation >= 2  THEN      SET game_edition = 'RED';
    ELSEIF generation >= 1  THEN      SET game_edition = 'BLUE';
    END IF;
	RETURN game_edition;
END
$$ DELIMITER ;


DROP FUNCTION IF EXISTS attack_against;
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS attack_against(id_pokemon_attack smallint, id_pokemon_receive smallint ) 
RETURNS SMALLINT
READS SQL DATA 
DETERMINISTIC
BEGIN
--     DECLARE against_total SMALLINT
       SET @against_total = (
           SELECT   CEIL(max(
                        (   s.attack  * 
                           CASE WHEN t.name = 'bug' THEN m.against_bug
                                WHEN t.name = 'dark' THEN m.against_dark
                                WHEN t.name = 'dragon' THEN m.against_dragon
                                WHEN t.name = 'electric' THEN m.against_electric
                                WHEN t.name = 'fairy' THEN m.against_fairy
                                WHEN t.name = 'fighting' THEN m.against_fight
                                WHEN t.name = 'fire' THEN m.against_fire
                                WHEN t.name = 'flying' THEN m.against_flying
                                WHEN t.name = 'ghost' THEN m.against_ghost
                                WHEN t.name = 'grass' THEN m.against_grass
                                WHEN t.name = 'ground' THEN m.against_ground
                                WHEN t.name = 'ice' THEN m.against_ice
                                WHEN t.name = 'normal' THEN m.against_normal
                                WHEN t.name = 'poison' THEN m.against_poison
                                WHEN t.name = 'psychic' THEN m.against_psychic
                                WHEN t.name = 'rock' THEN m.against_rock
                                WHEN t.name = 'steel' THEN m.against_steel
                                WHEN t.name = 'water' THEN m.against_water
                            END 
                        )
                        -  s.defense 
                        ) )
            FROM pokemons p 
            INNER JOIN statistics s  ON p.id_pokemon = s.id_pokemon 
            INNER JOIN pokemon_movement_per_pokemons m ON m.id_pokemon = s.id_pokemon
            INNER JOIN pokemon_per_pokemon_types ppt ON ppt.id_pokemon = id_pokemon_receive
            INNER JOIN pokemon_types t ON ppt.id_pokemon_type = t.id_pokemon_type
            WHERE p.id_pokemon = id_pokemon_attack
        );
    RETURN @against_total;
    
END
$$ DELIMITER ;

DROP FUNCTION IF EXISTS calculate_Age;
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculate_Age ( Age date    )
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE TodayDate DATE;
    SELECT CURRENT_DATE() INTO TodayDate;
    RETURN YEAR(TodayDate) - YEAR(Age);
END$$
DELIMITER ;


DROP FUNCTION IF EXISTS pokemon_count;
DELIMITER $$
CREATE FUNCTION pokemon_count(generation smallint) 
RETURNS INTEGER
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
    DECLARE result INTEGER;
    
    SELECT COUNT(*)
        INTO result
    FROM pokemons p
    WHERE p.generation = generation
    GROUP BY p.generation;

    RETURN result;
END$$
DELIMITER ;

SELECT pokemon_count(3);
SELECT calculate_Age('2000-05-14');
SELECT game_edition (1);
SELECT attack_against (1,12);

/************************
SELECT distinct generation FROM pokemons
SELECT * FROM pokemon_types;
SELECT * FROM pokemons;
SELECT * FROM pokemon_movement_per_pokemons;
SELECT* FROM statistics;
describe pokemon_types
describe pokemons;
describe statistics;
-- DETERMINISTIC
-- NO SQL
-- READS SQL DATA
 ************************/