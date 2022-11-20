
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


/*

SELECT * FROM leagues;
SELECT * FROM medals;
SELECT * FROM gym_leaders;
SELECT * FROM pokemon_types;
SELECT * FROM statistics;
SELECT * FROM Pokemons;
SELECT * FROM Pokemon_per_pokemon_types;

CREATE TABLE IF NOT EXISTS pokemon (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE,
    status TINYINT NOT NULL,
    priority TINYINT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;

-- DROP TABLE IF EXISTS poke;
-- https://www.geeksforgeeks.org/sql-ddl-dql-dml-dcl-tcl-commands/
*/
/* 
DROP TABLE IF EXISTS gym_leaders;
DROP TABLE IF EXISTS medals;
DROP TABLE IF EXISTS leagues;
DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS pokemon_types;
DROP TABLE IF EXISTS Pokemon_per_pokemon_types;


SELECT* FROM leagues; 
SELECT* FROM medals; 
SELECT* FROM leagues; 
SELECT* FROM pokemon_types; 
SELECT* FROM pokemons; 
 */
CREATE TABLE IF NOT EXISTS leagues (
    id_league SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP NULL,
    CONSTRAINT uk_unique__leagues_name UNIQUE(name)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS medals (
    id_medal SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_league SMALLINT UNSIGNED ,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP NULL,   
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
    modified_at TIMESTAMP NULL,       
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
    modified_at TIMESTAMP NULL,          
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
    modified_at TIMESTAMP NULL,          
    CONSTRAINT uk_unique__pokemons_number UNIQUE(number),
    CONSTRAINT uk_unique__pokemons_name UNIQUE(name)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_per_pokemon_types (
    id_pokemon_per_pokemon_type smallint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    id_pokemon_type SMALLINT UNSIGNED NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP NULL,              
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
    modified_at TIMESTAMP NULL,   
    INDEX IX__statistics_pokemons (id_pokemon ASC),
    CONSTRAINT fk__statistics__pokemons FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT    
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS cities(
    id_city smallint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP NULL,       
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
    modified_at TIMESTAMP NULL,              
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
    modified_at TIMESTAMP NULL,
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
    modified_at TIMESTAMP NULL,  
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
    modified_at TIMESTAMP NULL,    
    INDEX IX__pokemon_per_gym_leaders_id_pokemon_id_gym_leader (id_pokemon ASC,id_gym_leader ASC),        
    CONSTRAINT fk__pokemon_per_gym_leaders_id_pokemon FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk__pokemon_per_gym_leaders_id_gym_leader FOREIGN KEY (id_gym_leader) REFERENCES gym_leaders (id_gym_leader)    
    ON UPDATE CASCADE ON DELETE RESTRICT        
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_movements(
    id_pokemon_movement SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(30) NOT NULL, 
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP NULL,
    CONSTRAINT uk_unique__pokemon_movements_name UNIQUE(name)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_movement_per_pokemons(
    id_pokemon_movement_per_pokemon SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon SMALLINT UNSIGNED NOT NULL,
    id_pokemon_movement SMALLINT UNSIGNED NOT NULL,
    point SMALLINT UNSIGNED NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP NULL,    
    INDEX IX__pokemon_movement_per_pokemons_id_pokemon_id_pokemon_movement (id_pokemon ASC,id_pokemon_movement ASC),        
    CONSTRAINT fk__pokemon_movement_per_pokemons_id_pokemon FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)    
    ON UPDATE CASCADE ON DELETE RESTRICT,    
    CONSTRAINT fk__pokemon_movement_per_pokemons_id_pokemon_movement FOREIGN KEY (id_pokemon_movement) REFERENCES pokemon_movements (id_pokemon_movement)    
    ON UPDATE CASCADE ON DELETE RESTRICT
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS pokemon_movement_per_pokemon_types(
    id_pokemon_movement_per_pokemon_type SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_pokemon_type SMALLINT UNSIGNED NOT NULL,
    id_pokemon_movement SMALLINT UNSIGNED NOT NULL,
    accuracy SMALLINT UNSIGNED NOT NULL,
    active TINYINT NOT NULL DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP NULL,    
    INDEX IX__pokemon_movement_per_pokemon_ty_id_pokemon_ty_id_pokemon_mov (id_pokemon_type ASC,id_pokemon_movement ASC),        
    CONSTRAINT fk__pokemon_movement_per_pokemon_types_id_pokemon_type FOREIGN KEY (id_pokemon_type) REFERENCES pokemon_types (id_pokemon_type)    
    ON UPDATE CASCADE ON DELETE RESTRICT,    
    CONSTRAINT fk__pokemon_movement_per_pokemon_types_id_pokemon_movement FOREIGN KEY (id_pokemon_movement) REFERENCES pokemon_movements (id_pokemon_movement)    
    ON UPDATE CASCADE ON DELETE RESTRICT
)  ENGINE=INNODB;




