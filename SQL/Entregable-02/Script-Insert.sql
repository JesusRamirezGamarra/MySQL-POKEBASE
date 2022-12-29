/********************************************************************
Create table
Views
Functions
Store Procedure
Triggers
********************************************************************/

CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON POKE . * TO 'user'@'localhost';
FLUSH PRIVILEGES;

DROP DATABASE IF EXISTS poke; 
CREATE DATABASE IF NOT EXISTS poke;
USE poke;

DROP TABLE IF EXISTS gym_leaders;
DROP TABLE IF EXISTS medals;
DROP TABLE IF EXISTS leagues;
DROP TABLE IF EXISTS statistics;
DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS pokemon_types;
DROP TABLE IF EXISTS pokemon_per_coaches;
DROP TABLE IF EXISTS Pokemon_per_pokemon_types;
DROP TABLE IF EXISTS coaches;
DROP TABLE IF EXISTS coaches_LOG;

CREATE TABLE IF NOT EXISTS leagues (
    id_league SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT uk_unique__leagues_name UNIQUE(name)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS medals (
    id_medal SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_league SMALLINT UNSIGNED ,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__leagues (id_league ASC),
    CONSTRAINT uk_unique__medals_name UNIQUE(name),    
    CONSTRAINT fk__medals__leagues FOREIGN KEY (id_league) REFERENCES leagues(id_league)    
    ON UPDATE CASCADE ON DELETE RESTRICT
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS gym_leaders (
    id_gym_leader SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_medal SMALLINT UNSIGNED NOT NULL,
    name VARCHAR(30) NOT NULL,
    birth_date DATE NULL,
    adress VARCHAR(200) NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__medals (id_medal ASC),
    CONSTRAINT uk_unique__gym_leaders_name UNIQUE(name),
    CONSTRAINT fk__gym_leaders__medals FOREIGN KEY (id_medal) REFERENCES medals(id_medal)    
    ON UPDATE CASCADE ON DELETE RESTRICT
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_types (
    id_pokemon_type SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT uk_unique__pokemon_types_name UNIQUE(name)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemons (
    id_pokemon SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    number SMALLINT UNSIGNED NOT NULL,
    name VARCHAR(30) NOT NULL,
    gender CHAR(1) NOT NULL DEFAULT 'M',
    height_cm SMALLINT UNSIGNED NOT NULL,
    weight_kg SMALLINT UNSIGNED NULL,
    generation SMALLINT UNSIGNED NOT NULL,
    is_legendary TINYINT UNSIGNED NOT NULL DEFAULT 0,
    classfication VARCHAR(100) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT uk_unique__pokemons_number UNIQUE(number),
    CONSTRAINT uk_unique__pokemons_name UNIQUE(name)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_per_pokemon_types (
    id_pokemon_per_pokemon_type smallint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    id_pokemon_type SMALLINT UNSIGNED NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__pokemon_pokemon_type (id_pokemon ASC, id_pokemon_type ASC),
    CONSTRAINT fk__pokemon_per_pokemon_types__pokemons FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk__pokemon_per_pokemon_types__pokemon_types FOREIGN KEY (id_pokemon_type) REFERENCES pokemon_types (id_pokemon_type)    
    ON UPDATE CASCADE ON DELETE RESTRICT            
) ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS statistics (
    id_statistics smallint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    hp SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    attack SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    defense SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    sp_defense SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    sp_attack SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    speed SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__statistics_pokemons (id_pokemon ASC),
    CONSTRAINT fk__statistics__pokemons FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT    
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS cities(
    id_city smallint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT uk_unique__cities_name UNIQUE(name)    
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS coaches(
    id_coach int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_city SMALLINT UNSIGNED NOT NULL,
    name VARCHAR(30) NOT NULL,
    birth date NOT NULL,
    adress VARCHAR(30) NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__statistics__cities (id_city ASC),    
    CONSTRAINT fk__statistics__cities FOREIGN KEY (id_city) REFERENCES cities (id_city)    
    ON UPDATE CASCADE ON DELETE RESTRICT        
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_per_coaches(
    id_pokemon_per_coach int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    id_coach int UNSIGNED NOT NULL,
    captured_at TIMESTAMP NULL,          
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__pokemon_per_coaches_id_pokemon_per_coaches (id_pokemon ASC,id_coach ASC),    
    CONSTRAINT fk__pokemon_per_coaches__pokemons FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk__pokemon_per_coaches__coaches FOREIGN KEY (id_coach) REFERENCES coaches (id_coach)    
    ON UPDATE CASCADE ON DELETE RESTRICT        
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS medal_per_coaches(
    id_medal_per_coaches SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_coach int UNSIGNED NOT NULL,
    id_medal SMALLINT UNSIGNED NOT NULL,
    winned_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__medal_per_coaches_id_coach_id_medal (id_coach ASC,id_medal ASC),        
    CONSTRAINT fk__medal_per_coaches_id_coach FOREIGN KEY (id_coach) REFERENCES coaches (id_coach)    
    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk__medal_per_coaches_id_medal FOREIGN KEY (id_medal) REFERENCES medals (id_medal)    
    ON UPDATE CASCADE ON DELETE RESTRICT    
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_per_gym_leaders(
    id_pokemon_per_gym_leaders SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    id_gym_leader SMALLINT UNSIGNED NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX IX__pokemon_per_gym_leaders_id_pokemon_id_gym_leader (id_pokemon ASC,id_gym_leader ASC),        
    CONSTRAINT fk__pokemon_per_gym_leaders_id_pokemon FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk__pokemon_per_gym_leaders_id_gym_leader FOREIGN KEY (id_gym_leader) REFERENCES gym_leaders (id_gym_leader)    
    ON UPDATE CASCADE ON DELETE RESTRICT        
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_movements(
    id_pokemon_movement SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    name VARCHAR(30) NOT NULL, 
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk__pokemon_movements_per_pokemons_id_pokemon FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT      
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_movement_per_pokemons(
    id_pokemon_movement_per_pokemon SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    against_bug	DECIMAL(3, 2) NOT NULL,
    against_dark	DECIMAL(3, 2) NULL,
    against_dragon	DECIMAL(3, 2) NULL,
    against_electric	DECIMAL(3, 2) NULL,
    against_fairy	DECIMAL(3, 2)  NOT NULL,
    against_fight	DECIMAL(3, 2)  NOT NULL,
    against_fire	DECIMAL(3, 2)  NOT NULL,
    against_flying	DECIMAL(3, 2)  NOT NULL,
    against_ghost	DECIMAL(3, 2)  NOT NULL,
    against_grass	DECIMAL(3, 2)  NOT NULL,
    against_ground	DECIMAL(3, 2)  NOT NULL,
    against_ice	DECIMAL(3, 2) NOT NULL,
    against_normal	DECIMAL(3, 2)  NOT NULL,
    against_poison	DECIMAL(3, 2)  NOT NULL,
    against_psychic	DECIMAL(3, 2)  NOT NULL,
    against_rock	DECIMAL(3, 2)  NOT NULL,
    against_steel	DECIMAL(3, 2)  NOT NULL,
    against_water	DECIMAL(3, 2)  NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk__pokemon_movement_per_pokemons_id_pokemon FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS coaches_LOG (
    id_coach_LOG int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_coach int UNSIGNED ,
    id_city SMALLINT UNSIGNED NOT NULL,
    name VARCHAR(30) NOT NULL,
    birth date NOT NULL,
    adress VARCHAR(30) NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    user VARCHAR(200) NOT NULL,
    log_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS cities_LOG(
    id_city_LOG smallint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_city smallint UNSIGNED ,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    user VARCHAR(200) NOT NULL,
    log_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;



/***********************************************************************
list of views : 
------------------------------------------------------------------------------
    (1) vw_medal_by_league :  list of medals (active) by league (active)
        # Goal 	: obtain a list of medals available (active) for each league (active) in order to know the minimum requirements of medals to be met by each league
        # Table :   leagues
                    medals
        # Database: poke 
        # Return :  id_league 	( FK by table leagues )
                    id_medal	( FK by table medals )
                    league_name ( column name by table leagues ) 
                    medal_name  ( column name by table medals ) 
        # Order By :        league_name ASC ( column name by table leagues ) 
                            medal_name  ASC ( column name by table medals ) 
        # Test :    SELECT * FROM vw_medal_by_league;
------------------------------------------------------------------------------
    (2) vw_medal_by_league__FULL :   list of medals (active or inactive) by league (active or inactive) , include medals withOut League and league WITHOUT medal.
        # Goal 	: 	get all existing medals and leagues
        # Table :   leagues
                    medals
        # Database: poke 
        # Return :  id_league 
                    id_medal
                    league_name ( column name by table leagues ) 
                    medal_name  ( column name by table medals )                  
        # Order By : Nothing
        # Test :    SELECT * FROM vw_medal_by_league__FULL;
------------------------------------------------------------------------------
    (3) daysofweek :  list of days of the week, from monday to sunday.
        # Goal 	: 	get the list of days of the week
        # Table :   Nothing
        # Database: poke 
        # Return :  day                 
        # Order By : Nothing
        # Test :    SELECT * FROM daysofweek;
------------------------------------------------------------------------------
    (4) vw_gym_leaders_by_medal_by_league :  list of medals available (active) by league (active) and gym leader (active)
        # Goal : 	obtain the list of medals available (active) by league (active) and gym leader (active)
        # Table :   leagues
					medals
					gym_leaders   
        # Database: poke 
        # Return :  id_league		( FK by table leagues )
					id_medal		( FK by table medals )
					id_gym_leader	( FK by table gym_leaders )
					league_name		( column name by table leagues ) 
					medal_name		( column name by table medals )   
					gym_leader_name	( column name by table gym_leaders )   
        # Order By :	league_name 	( column name by table leagues ) 
						medal_name  	( column name by table medals )         
						gym_leader_name  ( column name by table gym_leaders )         
        # Test :    SELECT * FROM vw_gym_leaders_by_medal_by_league;
------------------------------------------------------------------------------
    (5) vw_amount_pokemon_types :  list of pokemon type (active ) with amount of pokemon .
        # Goal : 	Gets the number (amount)of pokemons by type considered only the enabled pokemons ( active ), the types of pokemon available ( active )
        # Table :   Pokemons
					pokemon_per_pokemon_types
                    pokemon_types
        # Database: poke 
        # Return :  id_pokemon_type		( FK by table pokemon_types )
					pokemon_type_name	( column name by table pokemon_types )         
                    amount_of_pokemons  ( amount of pokemons by pokemon type )
        # Order By : Nothing
        # Test :    SELECT * FROM vw_amount_pokemon_types ;		
------------------------------------------------------------------------------		
    (6) vw_pokemon_by_pokemon_types :  list of pokemon (active ) by poekemon type (active ) 
        # Goal : 	Gets the list of pokemons by type considered only the enabled pokemons ( active ), the types of pokemon available ( active )
        # Table :   Pokemons
					pokemon_per_pokemon_types
                    pokemon_types                    
        # Database: poke 
        # Return :  id_pokemon_type		( FK by table pokemon_types )
					id_pokemon			( FK by table Pokemons )
					pokemon_type_name	( column name by table pokemon_types )
					pokemon_name		( column name by table Pokemons )
        # Order By : Nothing                     
        # Test :    SELECT * FROM vw_pokemon_by_pokemon_types ;
------------------------------------------------------------------------------
    (7) vw_statistics_by_pokemon :  list of statistics with points of hp, attack, defense, special defense, special attack and speed for all pokemon (active) detailing its name
        # Goal : 	get the points for each stats of all pokemons
        # Table :   Pokemons
                    statistics
        # Database: poke 
        # Return :  id_pokemon		( FK by table Pokemons )
					id_statistics	( FK by table statistics )
					pokemon_name	( name of pokemon )
					hp            	( point for HP )
					attack        	( point for attact )
					defense			( point for defense )
					sp_defense		( point for special defense ) 
					sp_attack		( point for special attack )
					speed			( Point for speed )
        # Order By : Nothing                     
        # Test :    SELECT * FROM vw_statistics_by_pokemon ;
------------------------------------------------------------------------------
    (8) vw_statistics_by_pokemon__islengedary :  list of statistics with points of hp, attack, defense, special defense, special attack and speed for all legendary's pokemon (active)
        # Goal : get the points for each stats of all legendary's pokemons
        # Table :   Pokemons
					statistics
        # Database: poke 
        # Return :  
					id_pokemon		( FK by table pokemons )
					id_statistics	( FK by table statistics )
					pokemon_name	( name of pokemon )
					hp            	( point for HP )
					attack        	( point for attact )
					defense			( point for defense )
					sp_defense		( point for special defense ) 
					sp_attack		( point for special attack )
					speed			( Point for speed )	
        # Order By :                     
        # Test :    SELECT * FROM vw_statistics_by_pokemon__islengedary ;
------------------------------------------------------------------------------  
    (9) vw_statistics_by_pokemon_types__Max_score :  list of statitics with max statitics by pokemon types for all pokemon active
        # Goal : 	get list for maximun point of statitics by pokemon types
        # Table :   Pokemons
					pokemon_per_pokemon_types
					pokemon_types
					statistics
        # Database: poke 
        # Return :  id_pokemon_type     ( FK by table pokemon_types )                                   
                    pokemon_type_name	( type of pokemon )
					hp            		( point for HP )
					attack        		( point for attact )
					defense				( point for defense )
					sp_defense			( point for special defense ) 
					sp_attack			( point for special attack )
					speed				( Point for speed )
        # Order By : nothing
        # Test :    SELECT * FROM vw_statistics_by_pokemon_types__Max_score ;
------------------------------------------------------------------------------		
	(10) vw_pokemon_by_gender : list of pokemon by male and female
        # Goal : 	get number of pokemons for male and female
        # Table :   pokemons
        # Database: poke 
        # Return :  	M	( number of pokemon , male )
						F	( number of pokemon , female )						
        # Order By : 	nothing
        # Test :    SELECT * FROM vw_pokemon_by_gender;
------------------------------------------------------------------------------
	(11) vw_pokemon_by_generation :   list of pokemon detail number ,name and generation
        # Goal : 	get list of pokemons by generation
        # Table :   pokemons
        # Database: poke 
        # Return :  pokemon_number_pokedex	( Number of pokemon )
						pokemon_name			( Name of Pokemon )
						1er_Generation			( true or false depends the generation of pokemons)
						2da_Generation			( true or false depends the generation of pokemons)
						3er_Generation			( true or false depends the generation of pokemons)
						4ta_Generation			( true or false depends the generation of pokemons)
						5ta_Generation			( true or false depends the generation of pokemons)
						6ta_Generation			( true or false depends the generation of pokemons)
						7ma_Generation			( true or false depends the generation of pokemons)                 
        # Order By : 	pokemon_number_pokedex 		ASC		( Number of pokemon )
						generation	ASC		( Generation of pokemon )
        # Test :   	SELECT * FROM vw_pokemon_by_generation;
------------------------------------------------------------------------------
	(12) vw_pokemon_by_generation__COUNT :  count of pokemons by generation from 1era to 7ma
        # Goal : 	get the numbers of pokemons for each generation
        # Table :   pokemons
        # Database: poke 
        # Return :	1er_Generation	( mumnber of pokemon by 1er Generation )
					2da_Generation	( mumnber of pokemon by 2da Generation )
					3er_Generation	( mumnber of pokemon by 3er Generation )
					4ta_Generation	( mumnber of pokemon by 4ta Generation )
					5ta_Generation	( mumnber of pokemon by 5ta Generation )
					6ta_Generation	( mumnber of pokemon by 6ta Generation )
					7ma_Generation	( mumnber of pokemon by 7ma Generation )
        # Order By : nothing                     
        # Test :   	SELECT * FROM vw_pokemon_by_generation__COUNT;
------------------------------------------------------------------------------


***********************************************************************/

USE poke;

CREATE OR REPLACE VIEW vw_medal_by_league
AS
SELECT      l.id_league
        ,   m.id_medal
        ,   l.name AS league_name
        ,   m.name AS medal_name
FROM leagues l 
INNER JOIN medals m USING(id_league) -- ON l.id_league = m.id_league
WHERE l.active = 1
    AND m.active = 1
ORDER BY    l.name ASC
        ,   m.name ASC
;
CREATE OR REPLACE VIEW vw_medal_by_league__FULL
AS
SELECT      l.id_league
        ,   m.id_medal
        ,   l.name AS league_name
        ,   m.name AS medal_name
FROM leagues l 
LEFT OUTER JOIN medals m ON l.id_league = m.id_league
UNION -- UNION in MySQL will eliminate exact duplicates
SELECT      l.id_league
        ,   m.id_medal
        ,   l.name AS league_name
        ,   m.name AS medal_name
FROM leagues l 
RIGHT  OUTER JOIN medals m ON l.id_league = m.id_league
;
CREATE OR REPLACE VIEW daysofweek (day) 
AS
    SELECT 'Mon'  as Day
    UNION 
    SELECT 'Tue'
    UNION 
    SELECT 'Web'
    UNION 
    SELECT 'Thu'
    UNION 
    SELECT 'Fri'
    UNION 
    SELECT 'Sat'
    UNION 
    SELECT 'Sun'
;
CREATE OR REPLACE VIEW vw_gym_leaders_by_medal_by_league
AS
SELECT      l.id_league
        ,   m.id_medal
        ,   g.id_gym_leader
        ,   l.name AS league_name
        ,   m.name AS medal_name
        ,   g.name AS gym_leader_name

FROM leagues l 
INNER JOIN medals m USING(id_league)
INNER JOIN gym_leaders g USING (id_medal)
WHERE l.active = 1
    AND m.active = 1
    AND g.active = 1
ORDER BY    l.name ASC
        ,   m.name ASC
        ,   g.name ASC
;
CREATE OR REPLACE VIEW vw_amount_pokemon_types
AS
SELECT 
            t.id_pokemon_type
        ,   t.name  AS pokemon_type_name
        ,   COUNT(p.id_pokemon) AS amount_of_pokemons
FROM Pokemons p
INNER JOIN pokemon_per_pokemon_types  pt USING(id_pokemon)
INNER JOIN  pokemon_types t USING(id_pokemon_type)
WHERE   t.active = 1
    AND p.active = 1
    AND pt.active = 1
GROUP BY ( t.name ) 
;
CREATE OR REPLACE VIEW vw_pokemon_by_pokemon_types ( id_pokemon_type, id_pokemon ,pokemon_type_name, pokemon_name  )
AS
SELECT 
            t.id_pokemon_type
        ,   p.id_pokemon
        ,   t.name  AS pokemon_type_name
        ,   p.name  AS pokemon_name
FROM Pokemons p
INNER JOIN pokemon_per_pokemon_types  pt USING(id_pokemon)
INNER JOIN  pokemon_types t USING(id_pokemon_type)
WHERE   t.active = 1
    AND p.active = 1
    AND pt.active = 1
;
CREATE OR REPLACE VIEW vw_statistics_by_pokemon
AS
SELECT 
            p.id_pokemon
        ,   s.id_statistics
        ,   p.name  AS pokemon_name
        ,   s.hp            
        ,   s.attack        
        ,   s.defense
        ,   s.sp_defense
        ,   s.sp_attack
        ,   s.speed
FROM Pokemons p
INNER JOIN statistics s USING (id_pokemon)
WHERE       p.active = 1
        AND s.active = 1
;
CREATE OR REPLACE VIEW vw_statistics_by_pokemon__islengedary
AS
SELECT 
            p.id_pokemon
        ,   s.id_statistics
        ,   p.name  AS pokemon_name
        ,   s.hp            
        ,   s.attack        
        ,   s.defense
        ,   s.sp_defense
        ,   s.sp_attack
        ,   s.speed
FROM Pokemons p
INNER JOIN statistics s USING (id_pokemon)
WHERE       p.active = 1
        AND s.active = 1
        AND p.is_legendary = 1
;
CREATE OR REPLACE VIEW vw_statistics_by_pokemon_types__Max_score
AS
SELECT 
            t.id_pokemon_type
        ,   t.name  AS pokemon_type_name
        ,   MAX(s.hp) AS hp
        ,   MAX(s.attack) AS attack        
        ,   MAX(s.defense) AS defense
        ,   MAX(s.sp_defense) AS sp_defense
        ,   MAX(s.sp_attack) AS sp_attack
        ,   MAX(s.speed) AS speed
FROM Pokemons p
INNER JOIN pokemon_per_pokemon_types  pt USING(id_pokemon)
INNER JOIN pokemon_types t USING(id_pokemon_type)
INNER JOIN statistics s USING (id_pokemon)
WHERE   t.active = 1
    AND p.active = 1
    AND pt.active = 1
    AND s.active = 1
GROUP BY t.id_pokemon_type
;
CREATE OR REPLACE VIEW vw_pokemon_by_gender
AS
SELECT          -- Total invoices per gender , PIVOT
    sums.F AS female
  , sums.M AS male
  , sums.M + sums.F AS total
FROM (
  SELECT
    SUM( IF(gender='M',1 , 0) ) As 'M',
    SUM( IF(gender='F',1 , 0) ) As 'F'
  FROM pokemons
) AS sums;
CREATE OR REPLACE VIEW vw_pokemon_by_generation
AS
SELECT
            p.number    AS pokemon_number_pokedex
        ,   p.name      AS pokemon_name
        ,   CASE    WHEN p.generation = 1 THEN  true ELSE false END AS '1er Generation'
        ,   CASE    WHEN p.generation = 2 THEN  true ELSE false END AS '2da Generation'
        ,   CASE    WHEN p.generation = 3 THEN  true ELSE false END AS '3er Generation'
        ,   CASE    WHEN p.generation = 4 THEN  true ELSE false END AS '4ta Generation'
        ,   CASE    WHEN p.generation = 5 THEN  true ELSE false END AS '5ta Generation'
        ,   CASE    WHEN p.generation = 6 THEN  true ELSE false END AS '6ta Generation'
        ,   CASE    WHEN p.generation = 7 THEN  true ELSE false END AS '7ma Generation'
FROM pokemons p
GROUP BY p.number, p.name
ORDER BY p.number, p.generation ASC
;
CREATE OR REPLACE VIEW vw_pokemon_by_generation__COUNT
AS
SELECT 
    SUM(1G) AS '1er_Generation',
    SUM(2G) AS '2da_Generation',
    SUM(3G) AS '3er_Generation',
    SUM(4G) AS '4ta_Generation',
    SUM(5G) AS '5ta_Generation',
    SUM(6G) AS '6ta_Generation',
    SUM(7G) AS '7ma_Generation'
FROM  (
    SELECT
            SUM(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS 1G
        ,   SUM(CASE WHEN  p.generation = 2 THEN 1 ELSE 0 END) AS 2G
        ,   SUM(CASE WHEN  p.generation = 3 THEN 1 ELSE 0 END) AS 3G
        ,   SUM(CASE WHEN  p.generation = 4 THEN 1 ELSE 0 END) AS 4G
        ,   SUM(CASE WHEN  p.generation = 5 THEN 1 ELSE 0 END) AS 5G
        ,   SUM(CASE WHEN  p.generation = 6 THEN 1 ELSE 0 END) AS 6G
        ,   SUM(CASE WHEN  p.generation = 7 THEN 1 ELSE 0 END) AS 7G
    FROM  pokemons p
    GROUP BY generation
 ) AS T;


/****************************************************************************************
List of Functions
------------------------------------------------------------------------------
    (1) fn_game_edition :  name of pokemon edition by number of pokemon parameter
        # Goal : 	obtain of pokemon edition
        # Table :   nothing
        # Database: poke 
        # Return :   game_edition ( name of pokemon edition ) 
        # Order By : Nothing                     
        # Test :    SELECT fn_game_edition (1);
------------------------------------------------------------------------------
    (2) fn_attack_against :  maximun attack point for pokemon have by pokemon type
        # Goal : 	obtain the maximun attack point for pokemon 
        # Table :   pokemons
					statistics
					pokemon_movement_per_pokemons
					pokemon_per_pokemon_types
					pokemon_types                    
        # Database: poke 
        # Return :  fn_attack_against ( maximum point attacks by pokemon per pokemon types )
        # Order By : Nothing                     
        # Test :     SELECT fn_attack_against (1,12);
------------------------------------------------------------------------------
    (3) fn_calculate_Age :  calculate edad in year by bithdate parameter
        # Goal : 	obtain the age in year by birhdate
        # Table :   nothing                    
        # Database: poke 
        # Return : 	fn_calculate_Age ( age in year by birhdate )
        # Order By : Nothing                     
        # Test :    SELECT fn_calculate_Age('2000-05-14');
-----------------------------------------------------------------------------------------
    (4) fn_pokemon_count :  count of pokemons by generation parameter
        # Goal : 	obtain amount of pokemon by generation
        # Table :   pokemons
        # Database: poke 
        # Return :  fn_pokemon_count ( number of pokemon by generation )
        # Order By : Nothing                     
        # Test :   SELECT fn_pokemon_count(3);
****************************************************************************************/
USE poke;

DROP FUNCTION IF EXISTS fn_game_edition;
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS fn_game_edition (generation smallint) 
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

DROP FUNCTION IF EXISTS fn_attack_against;
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS fn_attack_against(id_pokemon_attack smallint, id_pokemon_receive smallint ) 
RETURNS SMALLINT
READS SQL DATA 
DETERMINISTIC
BEGIN
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
					) ) as maximun_attack
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

DROP FUNCTION IF EXISTS fn_calculate_Age;
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS fn_calculate_Age ( Age date    )
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE TodayDate DATE;
    SELECT CURRENT_DATE() INTO TodayDate;
    RETURN YEAR(TodayDate) - YEAR(Age);
END$$
DELIMITER ;

DROP FUNCTION IF EXISTS fn_pokemon_count;
DELIMITER $$
CREATE FUNCTION fn_pokemon_count(generation smallint) 
RETURNS INTEGER
DETERMINISTIC READS SQL DATA
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


/****************************************************************************************
Litado de store Procedure : 
------------------------------------------------------------------------------
    (1) sp_count_of_pokemon :  total number of pokemons
        # Goal : 	obtain the total count of pokemons
        # Table :   pokemons                    
        # Database: poke  
        # Return :  amount ( total count of pokemons )
        # Order By : Nothing                     
        # Test :    CALL count_of_pokemon;
-----------------------------------------------------------------------------------------
    (2) sp_count_of_pokemon_by_generation :  total numbers of pokemons by generation parameter filter 
        # Goal : 	obtain the total numbers of pokemons by generation parameter filter 
        # Table :   pokemons                    
        # Database: poke  
        # Return :  	amount ( total count of pokemons by generation parameter filter )
        # Order By : Nothing                     
        # Test :    CALL count_of_pokemon_by_generation (1);
-----------------------------------------------------------------------------------------
    (3) sp_pokemon_orderby_generation :  list of pokemons order by dinamic columns
        # Goal : 	obtain list of pokemons order by column parameter and ASC/DESC parameter
        # Table :   pokemons
        # Database: poke  
        # Return :  id_pokemon	( FK by table pokemons )
					number		( order number of Pokemons )
					name		( name of pokemons )
					gender		( gender of pokemons )
					heihgt_cm	( height in centimeter of pokemons )
					weight_kg	( weight in kilograme of pokemons )
					generation	( generation of pokemons )
					is_legendary	( true/1 is legendary or false/0 dont legendary pokemons ) 
					classification	( classification of pokemons )
					active		( true/1 is active pokemon or false/0 dont active )
					create_at	( Date of create )
					modified_at	( Date of modified )				
        # Order By : Nothing                     
        # Test :    CALL pokemon_orderby_generation ('name' ,'1');
-----------------------------------------------------------------------------------------
    (4) sp_inactivar_pokemon :  inactivar pokemon
        # Goal : 	update active pokemon for false/0
        # Table :   pokemons
        # Database: poke 
        # Return :   nothing
        # Order By : Nothing                     
        # Test :    CALL inactivar_pokemon ( 1 )    

****************************************************************************************/		

DROP PROCEDURE  IF EXISTS sp_count_of_pokemon;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS  `sp_count_of_pokemon` ()
BEGIN
    SELECT 
        COUNT(*) AS amount
    FROM pokemons;
END
$$ DELIMITER ;


DROP PROCEDURE  IF EXISTS sp_count_of_pokemon_by_generation;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS  `sp_count_of_pokemon_by_generation` (IN _generation SMALLINT UNSIGNED )
BEGIN
    SELECT 
        COUNT(*) AS amount
    FROM pokemons
    WHERE generation = _generation;
    
END
$$ DELIMITER ;

DROP PROCEDURE  IF EXISTS sp_pokemon_orderby_generation;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS  `sp_pokemon_orderby_generation` (IN field_column VARCHAR(20) , in is_ascendent CHAR(1)  )
BEGIN
    IF field_column <> '' THEN
        IF is_ascendent = '1'        THEN   SET @column_name = CONCAT('ORDER BY',' ',field_column,' ','ASC');                  
        ELSEIF is_ascendent = '0'    THEN    SET @column_name = CONCAT('ORDER BY',' ',field_column,' ','DESC');
        ELSE SET @column_name = '';
        END IF;  
    ELSE 
        SET @column_name = '';
    END IF;
    
     IF  @column_name <> '' THEN
        SET @consulta = CONCAT('SELECT * FROM pokemons',' ',  @column_name);
    ELSE 
        SET @consulta = 'SELECT ERROR:  invalid parameter . look is_ascedent parameter value  AS Error' ;
    END IF;  
    
    PREPARE querys FROM @consulta;
    EXECUTE querys;
    DEALLOCATE PREPARE querys;
   
    
END
$$ DELIMITER ;

DROP PROCEDURE IF EXISTS sp_inactivar_pokemon;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS  sp_inactivar_pokemon(in id_pokemon smallint unsigned)
BEGIN

    IF id_pokemon >0  THEN
        SET @consulta = CONCAT( 'UPDATE pokemons SET ACTIVE = 0',' ', 'WHERE id_pokemon=', id_pokemon );
    ELSE 
        SET @consulta ='';
    END IF;
    -- SELECT CONCAT( @consulta , '' );
    PREPARE querys FROM @consulta;
    EXECUTE querys;
    DEALLOCATE PREPARE querys;       
   
END
$$ DELIMITER ;

DROP TRIGGER IF EXISTS tr_coaches_age_check;
DROP TRIGGER IF EXISTS tr_coaches_UPDATE_LOG;
DROP TRIGGER IF EXISTS tr_coaches_DELETE_LOG;
DROP TRIGGER IF EXISTS tr_cities_check;
DROP TRIGGER IF EXISTS tr_cities_UPDATE_LOG;
DROP TRIGGER IF EXISTS tr_cities_DELETE_LOG;



DELIMITER $$
CREATE DEFINER=CURRENT_USER TRIGGER tr_coaches_age_check
BEFORE INSERT ON coaches
FOR EACH ROW
BEGIN
  IF YEAR(NEW.birth) > YEAR(CURDATE()) - 18 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Registrations of minors are not allowed';
  END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE DEFINER=CURRENT_USER TRIGGER tr_coaches_UPDATE_LOG
AFTER UPDATE ON coaches
FOR EACH ROW
BEGIN
    INSERT INTO coaches_LOG (  id_coach, id_city, name ,birth,adress, active,created_at, modified_at, user , log_at) 
    VALUES ( OLD.id_coach, OLD.id_city, OLD.name ,OLD.birth, OLD.adress, OLD.active, OLD.created_at, OLD.modified_at,CURRENT_USER(),CURDATE() );
END
$$ DELIMITER ;

DELIMITER $$
CREATE DEFINER=CURRENT_USER TRIGGER tr_coaches_DELETE_LOG
AFTER DELETE ON coaches
FOR EACH ROW
BEGIN
    INSERT INTO coaches_LOG (  id_coach, id_city, name ,birth,adress, active,created_at, modified_at, user , log_at) 
    VALUES ( OLD.id_coach, OLD.id_city, OLD.name ,OLD.birth, OLD.adress, OLD.active, OLD.created_at, OLD.modified_at,CURRENT_USER(),CURDATE() );
END
$$ DELIMITER ;


DELIMITER $$
CREATE DEFINER=CURRENT_USER TRIGGER tr_cities_check
BEFORE INSERT ON cities
FOR EACH ROW
BEGIN
  IF LENGTH(NEW.name) <= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Registrations of city are not allowed , Insert City name with more 3 letters';
  END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE DEFINER=CURRENT_USER TRIGGER tr_cities_UPDATE_LOG
AFTER UPDATE ON cities
FOR EACH ROW
BEGIN
    INSERT INTO cities_LOG (  id_city, name , active,created_at, modified_at, user , log_at) 
    VALUES (  OLD.id_city, OLD.name , OLD.active, OLD.created_at, OLD.modified_at,CURRENT_USER(),CURDATE() );
END
$$ DELIMITER ;

DELIMITER $$
CREATE DEFINER=CURRENT_USER TRIGGER tr_cities_DELETE_LOG
AFTER DELETE ON cities
FOR EACH ROW
BEGIN
    INSERT INTO cities_LOG (  id_city, name ,active,created_at, modified_at, user , log_at) 
    VALUES (  OLD.id_city, OLD.name ,OLD.active, OLD.created_at, OLD.modified_at,CURRENT_USER(),CURDATE() );
END
$$ DELIMITER ;
