USE poke;
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


SELECT * FROM coaches_LOG;
SELECT * FROM coaches;
SELECT * FROM cities;
SELECT * FROM cities_LOG;

/*************************************************************************************
-- Test Trigger que evita registra couches menores de edad 
INSERT INTO coaches ( id_city, name ,birth )
SELECT '1','Jesus Ramirez', '2020-05-14'  FROM cities WHERE name = 'Pueblo Paleta';
SELECT * FROM coaches;

-- Test Trigger que generar LOG de cambios
INSERT INTO coaches ( id_city, name ,birth )
SELECT '1','Jesus Ramirez', '2000-05-14'  FROM cities WHERE name = 'Pueblo Paleta';
SELECT * FROM coaches;

UPDATE coaches
SET name = 'Jesus Ramirez Gamarra'
WHERE name = 'Jesus Ramirez';
SELECT * FROM coaches;
SELECT * FROM coaches_LOG;

DELETE FROM coaches
WHERE name = 'Jesus Ramirez Gamarra';
SELECT * FROM coaches;
SELECT * FROM coaches_LOG;



-- Test Trigger que evita registra cities con nombre de menos de 4 caracteres
INSERT INTO cities ( name)
Values ('abc');
SELECT * FROM cities;

-- Test Trigger que generar LOG de cambios
INSERT INTO cities ( name )
Values ('Viridian City');
SELECT * FROM cities;

UPDATE cities
SET name = 'Viridian'
WHERE name = 'Viridian City';
SELECT * FROM cities;
SELECT * FROM cities_LOG;

DELETE FROM cities
WHERE name = 'Viridian';
SELECT * FROM cities;
SELECT * FROM cities_LOG;


***************************************************************************************/


