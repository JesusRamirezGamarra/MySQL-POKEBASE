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


/**************************************************************************************
SELECT * FROM vw_medal_by_league;
SELECT * FROM vw_medal_by_league__FULL;
SELECT * FROM daysofweek;
SELECT * FROM vw_gym_leaders_by_medal_by_league;
SELECT * FROM vw_amount_pokemon_types ;
SELECT * FROM vw_pokemon_by_pokemon_types ;
SELECT * FROM vw_statistics_by_pokemon ;
SELECT * FROM vw_statistics_by_pokemon__islengedary ;
SELECT * FROM vw_statistics_by_pokemon_types__Max_score ;
SELECT * FROM vw_pokemon_by_gender;
SELECT * FROM vw_pokemon_by_generation
SELECT * FROM vw_pokemon_by_generation__COUNT


SELECT * FROM leagues leagues ;
SELECT * FROM medals medals ;
SELECT * FROM gym_leaders ;
SELECT * FROM Pokemons ;
SELECT* FROM pokemon_per_pokemon_types ;
SELECT * FROM Pokemon_types ;
SELECT * FROM statistics ;
*****************************************************************************************/