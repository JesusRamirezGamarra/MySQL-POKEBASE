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
USE poke;
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

/*********************************************
CALL count_of_pokemon;
CALL count_of_pokemon_by_generation (1);
CALL pokemon_orderby_generation ('name' ,'1');
CALL inactivar_pokemon ( 1 )    

update poKEMONS SET ACTIVE = 0 where id_pokemon = 1
SELECT * FROM pokemons
update poKEMONS SET ACTIVE = 1 where id_pokemon = 1

**********************************************/
