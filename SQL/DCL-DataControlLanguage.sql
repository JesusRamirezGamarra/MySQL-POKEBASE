

/*********************************************************************************
Consigna :
- Se deberán crear dos usuarios nuevos a los cuales se le asignará una serie de permisos.
Aspectos a incluir :
- Uno de los usuarios creados deberá tener permisos de sólo lectura sobre todas las tablas.
- El otro usuario deberá tener permisos de Lectura, Inserción y Modificación de datos.
- Ninguno de ellos podrá eliminar registros de ninguna tabla.
- Cada sentencia GRANT y CREATE USER deberá estar comentada con lo que realiza la misma.
**********************************************************************************/

CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON POKE . * TO 'user'@'localhost';
FLUSH PRIVILEGES;
-- --------------------------------------------------------------------------------------
DROP USER IF EXISTS 'userread'@'localhost';
-- Este comando crea un nuevo usuario de nombre 'userread' con la clave password
CREATE USER 'userread'@'localhost' IDENTIFIED BY 'password';
-- Este comando asigna los permisos de vistas y consultas para el usuario 'userread'
GRANT SELECT, SHOW VIEW ON POKE.* TO 'userread'@'localhost';
FLUSH PRIVILEGES;
-- --------------------------------------------------------------------------------------
DROP USER IF EXISTS 'userwrite'@'localhost';
-- Este comando crea un nuevo usuario de nombre 'userwrite' con la clave password
CREATE USER 'userwrite'@'localhost' IDENTIFIED BY 'password';
-- Este comando asigna los permisos de vistas,consultas, modificaciones e inserciones para el usuario 'userwrite'
GRANT SELECT, SHOW VIEW, UPDATE, INSERT ON POKE.* TO 'userwrite'@'localhost';
FLUSH PRIVILEGES;
-- --------------------------------------------------------------------------------------