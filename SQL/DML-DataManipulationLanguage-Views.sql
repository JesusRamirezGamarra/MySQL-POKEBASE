/***********************************************************************
leagues
medals
gym_leaders
Pokemons
pokemon_types
pokemon_per_pokemon_types
statistics
pokemon_movement_per_pokemons
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
    SELECT 'Mon' 
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
        COUNT(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS  '1er Generation'
    ,   COUNT(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS  '2da Generation'
    ,   COUNT(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS  '3er Generation'
    ,   COUNT(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS  '4ta Generation'
    ,   COUNT(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS  '5ta Generation'
    ,   COUNT(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS  '6ta Generation'
    ,   COUNT(CASE WHEN  p.generation = 1 THEN 1 ELSE 0 END) AS  '7ma Generation'
FROM  pokemons p
GROUP BY generation;  


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