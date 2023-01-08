USE poke;
--   Aspectos a incluir : 
/****************************************************************************
1 ) En la primera tabla, si tiene registros, deberás eliminar algunos de ellos iniciando previamente una transacción. Si no tiene registros la tabla, reemplaza eliminación por inserción.
Deja en una línea siguiente, comentado la sentencia Rollback, y en una línea posterior, la sentencia Commit.
Si eliminas registros importantes, deja comenzado las sentencias para re-insertarlos.

2 ) En la segunda tabla, inserta ocho nuevos registros iniciando también una transacción. 
Agrega un savepoint a posteriori de la inserción del registro #4 y otro savepoint a posteriori del registro #8
Agrega en una línea comentada la sentencia de eliminación del savepoint de los primeros 4 registros insertados.

SELECT * FROM medal_per_coaches;
SELECT * FROM cities;
****************************************************************************/

-- Ejercicio 01  
START TRANSACTION;
    DELETE FROM medal_per_coaches
    WHERE id_medal_per_coaches >= 10;
-- ROLLBACK;    
COMMIT;
/*
INSERT INTO medal_per_coaches( id_coach,id_medal, winned_at)
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Colmena' LIMIT 1  )  AS id_medal, '2020-10-13 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Planicie' LIMIT 1  )  AS id_medal, '2020-11-02 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Niebla' LIMIT 1  )  AS id_medal, '2020-12-01 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Tormenta' LIMIT 1  )  AS id_medal, '2021-01-01 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Mineral' LIMIT 1  )  AS id_medal, '2021-03-02 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Glaciar' LIMIT 1  )  AS id_medal, '2021-05-03 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Dragón' LIMIT 1  )  AS id_medal, '2021-07-04 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum';
*/
-- Ejercicio 02
START TRANSACTION;
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 01';
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 02';
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 03';
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 04';
savepoint cities_Firts_04;
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 05';
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 06';
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 07';
    INSERT INTO  cities ( name )     SELECT 'Pueblo CoderHouse 08';
savepoint cities_Lasts_04;

-- RELEASE savepoint cities_Firts_04;             #elimina el primer savapoint
-- ROLLBACK TO SAVEPOINT cities_Firts_04;  
-- ROLLBACK TO SAVEPOINT cities_Lasts_04;  
COMMIT;  
-- DELETE FROM cities WHERE NAME LIKE 'Pueblo CoderHouse%'

