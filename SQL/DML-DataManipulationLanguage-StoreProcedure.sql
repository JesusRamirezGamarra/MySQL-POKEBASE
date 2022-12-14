USE poke;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS  `count_of_pokemon` ()
BEGIN
    SELECT 
        COUNT(*)
    FROM pokemons;
END
$$ DELIMITER ;


-- DROP PROCEDURE count_of_pokemon_by_generation
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS  `count_of_pokemon_by_generation` (IN _generation SMALLINT UNSIGNED )
BEGIN
    SELECT 
        COUNT(*)
    FROM pokemons
    WHERE generation = _generation;
    
END
$$ DELIMITER ;



DROP PROCEDURE  IF EXISTS pokemon_orderby_generation;

DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS  `pokemon_orderby_generation` (IN field_column VARCHAR(20) , in is_ascendent CHAR(1)  )
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

DROP PROCEDURE IF EXISTS inactivar_pokemon;
DELIMITER $$
CREATE PROCEDURE inactivar_pokemon(in id_pokemon smallint unsigned)
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

/*********************************************
CALL count_of_pokemon;
CALL count_of_pokemon_by_generation (1);
CALL pokemon_orderby_generation ('name' ,'1');
CALL inactivar_pokemon ( 1 )    

update poKEMONS SET ACTIVE = 0 where id_pokemon = 1
SELECT * FROM pokemons
update poKEMONS SET ACTIVE = 1 where id_pokemon = 1

**********************************************/
