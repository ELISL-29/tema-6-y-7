CREATE TABLE `empleados`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombres` VARCHAR(255) NOT NULL,
    `apellidos` VARCHAR(255) NOT NULL,
    `puestos` VARCHAR(255) NOT NULL,
    `salario` BIGINT NOT NULL,
    `edad` INT NOT NULL,
    `celular` BIGINT NOT NULL,
    `direccion` VARCHAR(255) NOT NULL
);

insert into empleados()