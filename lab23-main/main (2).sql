CREATE TABLE Empleados (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(255) NOT NULL,
    Apellidos VARCHAR(255) NOT NULL,
    Puesto VARCHAR(255) NOT NULL,
    Salario BIGINT NULL,
    Edad INT NOT NULL,
    Celular BIGINT NOT NULL,
    Direccion VARCHAR(255) NOT NULL
);

-- Insert data into Empleados table
INSERT INTO Empleados (Nombres, Apellidos, Puesto, Salario, Edad, Celular, Direccion)
VALUES 
    ("Fabio", "Mendoza", "Docente", 200000, 25, 30112344, "Calle 123");
-- Ejercicio 4
INSERT INTO Empleados (Nombres, Apellidos, Puesto, Salario, Edad, Celular, Direccion)
VALUES 
    ("ejemplo1", "ejemplo1", "Docente", 300000, 28, 3011234476, "Calle 456"),
    ("ejemplo2", "ejemplo2", "Docente", 400000, 29, 3011234477, "Calle 456"),
    ("ejemplo3", "ejemplo3", "Docente", 500000, 30, 3011234478, "Calle 456"),
    ("ejemplo4", "ejemplo4", "Docente", 600000, 31, 3011234479, "Calle 456"),
    ("ejemplo5", "ejemplo5", "Docente", 700000, 32, 3011234480, "Calle 456"),
    ("ejemplo6", "ejemplo6", "Docente", 800000, 33, 3011234481, "Calle 456"),
    ("ejemplo7", "ejemplo7", "Docente", 900000, 34, 3011234482, "Calle 456"),
    ("ejemplo8", "ejemplo8", "Docente", 1000000, 35, 3011234483, "Calle 456"),
    ("ejemplo9", "ejemplo9", "Docente", 110000, 36, 3011234484, "Calle 456");

-- Ejercicio 5
SELECT Nombres FROM Empleados WHERE Salario > 400000;


SELECT Puesto FROM Empleados WHERE Edad > 30;

-- Ejercicio 6
UPDATE Empleados SET Salario = 230000 WHERE id = 2 OR id = 6;


UPDATE Empleados SET Celular = 3333333333 WHERE id = 7;


UPDATE Empleados SET Celular = 2222222222 WHERE id = 8;



SELECT * FROM Empleados