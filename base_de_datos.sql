-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2025 a las 06:04:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `AUDITORIA_ID` int(11) NOT NULL,
  `SUBASTA_ID` int(11) DEFAULT NULL,
  `AUDITORIA_USUARIO_ID` int(11) DEFAULT NULL,
  `AUDITORIA_FECHA_HORA` datetime NOT NULL,
  `AUDITORIA_ACCION` varchar(128) NOT NULL,
  `AUDITORIA_TABLA_AFECTADA` varchar(32) NOT NULL,
  `AUDITORIA_DETALLE_CAMBIO` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`AUDITORIA_ID`, `SUBASTA_ID`, `AUDITORIA_USUARIO_ID`, `AUDITORIA_FECHA_HORA`, `AUDITORIA_ACCION`, `AUDITORIA_TABLA_AFECTADA`, `AUDITORIA_DETALLE_CAMBIO`) VALUES
(1, NULL, 53, '2025-03-11 22:24:21', 'INSERT', 'usuario', 'Nuevo usuario insertado: 53'),
(2, NULL, 54, '2025-03-11 22:25:57', 'INSERT', 'comprador', 'Nuevo comprador insertado: 54'),
(3, NULL, 54, '2025-03-11 22:25:57', 'INSERT', 'usuario', 'Nuevo usuario insertado: 54'),
(4, 1, NULL, '2025-03-11 22:36:42', 'INSERT', 'pago', 'Nuevo pago insertado: 2'),
(5, NULL, 55, '2025-03-11 22:39:34', 'INSERT', 'vendedor', 'Nuevo vendedor agregado con USUARIO_ID 55'),
(6, NULL, 55, '2025-03-11 22:39:34', 'INSERT', 'usuario', 'Nuevo usuario insertado: 55'),
(7, 1, 1, '2025-03-11 23:03:13', 'UPDATE', 'subasta', 'Subasta actualizada: 1'),
(8, 1, 1, '2025-03-11 23:03:13', 'INSERT', 'participar', 'Nueva participación insertada: Subasta 1, Usuario 1'),
(9, 1, 25, '2025-03-11 23:03:13', 'INSERT', 'puja', 'Nueva puja insertada: 0'),
(10, 2, 21, '2025-03-11 23:03:20', 'UPDATE', 'puja', 'Puja actualizada: 8'),
(11, 2, 2, '2025-03-11 23:06:14', 'UPDATE', 'subasta', 'Subasta actualizada: 2'),
(12, 2, 2, '2025-03-11 23:06:14', 'INSERT', 'participar', 'Nueva participación insertada: Subasta 2, Usuario 2'),
(13, 2, 25, '2025-03-11 23:06:14', 'INSERT', 'puja', 'Nueva puja insertada: 9'),
(15, 3, 1, '2025-03-11 23:08:34', 'UPDATE', 'subasta', 'Subasta actualizada: 3'),
(16, 3, 1, '2025-03-11 23:08:34', 'INSERT', 'participar', 'Nueva participación insertada: Subasta 3, Usuario 1'),
(17, 3, 21, '2025-03-11 23:08:34', 'INSERT', 'puja', 'Nueva puja insertada: 10'),
(18, 2, NULL, '2025-03-11 23:14:58', 'UPDATE', 'pago', 'Pago actualizado: 2'),
(19, 1, NULL, '2025-03-11 23:16:26', 'INSERT', 'pago', 'Nuevo pago insertado: 3'),
(20, NULL, 1, '2025-03-11 23:16:26', 'UPDATE', 'vehiculo', 'Vehículo actualizado: 1'),
(21, 2, 2, '2025-03-11 23:16:58', 'UPDATE', 'subasta', 'Subasta actualizada: 2'),
(22, 2, 2, '2025-03-11 23:17:16', 'UPDATE', 'subasta', 'Subasta actualizada: 2'),
(23, 2, 2, '2025-03-11 23:19:00', 'UPDATE', 'subasta', 'Subasta actualizada: 2'),
(24, 1, NULL, '2025-03-11 23:22:44', 'INSERT', 'pago', 'Nuevo pago insertado: 4'),
(25, NULL, 1, '2025-03-11 23:22:44', 'UPDATE', 'vehiculo', 'Vehículo actualizado: 1'),
(26, NULL, 2, '2025-03-11 23:27:37', 'INSERT', 'vehiculo', 'Nuevo vehículo insertado: 21'),
(27, 5, 2, '2025-03-11 23:28:10', 'INSERT', 'subasta', 'Nueva subasta insertada: 5'),
(28, 5, 2, '2025-03-11 23:28:43', 'UPDATE', 'subasta', 'Subasta actualizada: 5'),
(29, 5, 2, '2025-03-11 23:29:46', 'UPDATE', 'subasta', 'Subasta actualizada: 5'),
(30, 5, 2, '2025-03-11 23:30:23', 'UPDATE', 'subasta', 'Subasta actualizada: 5'),
(33, 5, 2, '2025-03-11 23:31:09', 'UPDATE', 'subasta', 'Subasta actualizada: 5'),
(34, 1, NULL, '2025-03-11 23:31:15', 'DELETE', 'pago', 'Pago eliminado: 4'),
(35, 1, NULL, '2025-03-11 23:31:15', 'DELETE', 'pago', 'Pago eliminado: 3'),
(36, 5, NULL, '2025-03-11 23:31:15', 'INSERT', 'pago', 'Nuevo pago insertado: 5'),
(37, NULL, 2, '2025-03-11 23:31:15', 'UPDATE', 'vehiculo', 'Vehículo actualizado: 21'),
(38, 1, 1, '2025-03-11 23:34:25', 'UPDATE', 'subasta', 'Subasta actualizada: 1'),
(39, 1, NULL, '2025-03-11 23:34:40', 'INSERT', 'pago', 'Nuevo pago insertado: 6'),
(40, NULL, 1, '2025-03-11 23:34:40', 'UPDATE', 'vehiculo', 'Vehículo actualizado: 1'),
(44, 7, 3, '2025-03-11 23:36:08', 'INSERT', 'subasta', 'Nueva subasta insertada: 7'),
(45, 7, 3, '2025-03-11 23:44:22', 'UPDATE', 'subasta', 'Subasta actualizada: 7'),
(46, 7, 3, '2025-03-11 23:44:30', 'UPDATE', 'subasta', 'Subasta actualizada: 7'),
(47, 8, 3, '2025-03-11 23:45:02', 'INSERT', 'subasta', 'Nueva subasta insertada: 8'),
(48, 8, 3, '2025-03-11 23:46:17', 'UPDATE', 'subasta', 'Subasta actualizada: 8'),
(49, 8, 3, '2025-03-11 23:47:03', 'UPDATE', 'subasta', 'Subasta actualizada: 8'),
(50, 5, NULL, '2025-03-11 23:52:30', 'INSERT', 'pago', 'Nuevo pago insertado: 7'),
(51, NULL, 2, '2025-03-11 23:52:30', 'UPDATE', 'vehiculo', 'Vehículo actualizado: 21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `USUARIO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`USUARIO_ID`) VALUES
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(54);

--
-- Disparadores `comprador`
--
DELIMITER $$
CREATE TRIGGER `after_comprador_delete` AFTER DELETE ON `comprador` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        OLD.USUARIO_ID, 
        NOW(), 
        'DELETE', 
        'comprador', 
        CONCAT('Comprador eliminado: ', OLD.USUARIO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_comprador_insert` AFTER INSERT ON `comprador` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        NEW.USUARIO_ID, 
        NOW(), 
        'INSERT', 
        'comprador', 
        CONCAT('Nuevo comprador insertado: ', NEW.USUARIO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_comprador_update` AFTER UPDATE ON `comprador` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        NEW.USUARIO_ID, 
        NOW(), 
        'UPDATE', 
        'comprador', 
        CONCAT('Comprador actualizado: ', NEW.USUARIO_ID)
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `PAGO_ID` int(11) NOT NULL,
  `SUBASTA_ID` int(11) NOT NULL,
  `PAGO_MONTO` int(11) NOT NULL,
  `PAGO_FECHA` datetime NOT NULL DEFAULT current_timestamp(),
  `PAGO_METODO` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`PAGO_ID`, `SUBASTA_ID`, `PAGO_MONTO`, `PAGO_FECHA`, `PAGO_METODO`) VALUES
(2, 2, 20000, '2025-03-11 22:36:42', 'tranferencia'),
(5, 5, 12000, '2025-03-11 23:31:15', 'efectivo'),
(6, 1, 24000, '2025-03-11 23:34:40', 'efectivo'),
(7, 5, 12000, '2025-03-11 23:52:30', 'tranferencia');

--
-- Disparadores `pago`
--
DELIMITER $$
CREATE TRIGGER `actualizar_estado_vehiculo_pago` AFTER INSERT ON `pago` FOR EACH ROW BEGIN
    -- Actualizar el estado del vehículo a 2 (vendido) cuando haya un pago
    UPDATE vehiculo v
    JOIN subasta s ON v.VEHICULO_ID = s.VEHICULO_ID
    SET v.VEHICULO_ESTADO_DE_VENTA = 2
    WHERE s.SUBASTA_ID = NEW.SUBASTA_ID;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_pago_delete` AFTER DELETE ON `pago` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        OLD.SUBASTA_ID, 
        NULL, 
        NOW(), 
        'DELETE', 
        'pago', 
        CONCAT('Pago eliminado: ', OLD.PAGO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_pago_insert` AFTER INSERT ON `pago` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NULL, 
        NOW(), 
        'INSERT', 
        'pago', 
        CONCAT('Nuevo pago insertado: ', NEW.PAGO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_pago_update` AFTER UPDATE ON `pago` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NULL, 
        NOW(), 
        'UPDATE', 
        'pago', 
        CONCAT('Pago actualizado: ', NEW.PAGO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_insert_pago` BEFORE INSERT ON `pago` FOR EACH ROW BEGIN
    DECLARE pago_final DECIMAL(10,0);
    
    -- Obtener el valor de SUBASTA_PAGO_FINAL de la tabla subasta
    SELECT SUBASTA_PAGO_FINAL INTO pago_final
    FROM subasta
    WHERE SUBASTA_ID = NEW.SUBASTA_ID;
    
    -- Insertar el valor en PAGO_MONTO
    SET NEW.PAGO_MONTO = pago_final;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `verificar_subasta_finalizada` BEFORE INSERT ON `pago` FOR EACH ROW BEGIN
    -- Verificar si la subasta asociada está finalizada (estado = 0)
    DECLARE estado_subasta INT;

    -- Obtener el estado de la subasta asociada con el pago
    SELECT SUBASTA_ESTADO INTO estado_subasta
    FROM subasta
    WHERE SUBASTA_ID = NEW.SUBASTA_ID;

    -- Si la subasta no está finalizada (estado distinto de 0), cancelar la inserción
    IF estado_subasta != 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El pago solo puede realizarse a subastas finalizadas.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participar`
--

CREATE TABLE `participar` (
  `SUBASTA_ID` int(11) NOT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  `COMPRADOR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `participar`
--

INSERT INTO `participar` (`SUBASTA_ID`, `USUARIO_ID`, `COMPRADOR_ID`) VALUES
(1, 1, 25),
(2, 2, 21),
(2, 2, 25),
(3, 1, 21);

--
-- Disparadores `participar`
--
DELIMITER $$
CREATE TRIGGER `after_participar_delete` AFTER DELETE ON `participar` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        OLD.SUBASTA_ID, 
        OLD.USUARIO_ID, 
        NOW(), 
        'DELETE', 
        'participar', 
        CONCAT('Participación eliminada: Subasta ', OLD.SUBASTA_ID, ', Usuario ', OLD.USUARIO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_participar_insert` AFTER INSERT ON `participar` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NEW.USUARIO_ID, 
        NOW(), 
        'INSERT', 
        'participar', 
        CONCAT('Nueva participación insertada: Subasta ', NEW.SUBASTA_ID, ', Usuario ', NEW.USUARIO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_participar_update` AFTER UPDATE ON `participar` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NEW.USUARIO_ID, 
        NOW(), 
        'UPDATE', 
        'participar', 
        CONCAT('Participación actualizada: Subasta ', NEW.SUBASTA_ID, ', Usuario ', NEW.USUARIO_ID)
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puja`
--

CREATE TABLE `puja` (
  `PUJA_ID` int(11) NOT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  `SUBASTA_ID` int(11) NOT NULL,
  `PUJA_MONTO` float(8,2) NOT NULL,
  `PUJA_HORA` datetime NOT NULL,
  `PUJA_GANADORA` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puja`
--

INSERT INTO `puja` (`PUJA_ID`, `USUARIO_ID`, `SUBASTA_ID`, `PUJA_MONTO`, `PUJA_HORA`, `PUJA_GANADORA`) VALUES
(1, 25, 1, 24000.00, '0000-00-00 00:00:00', 1),
(3, 22, 1, 5000.00, '2025-03-11 14:30:00', 0),
(4, 22, 1, 5000.00, '2025-03-11 14:30:00', 0),
(5, 26, 1, 5000.00, '2025-03-11 14:30:00', 0),
(6, 26, 1, 5000.00, '2025-03-11 00:00:00', 0),
(7, 21, 2, 0.00, '2025-03-11 00:00:00', 0),
(8, 21, 2, 10.00, '2025-03-11 00:00:00', 1),
(9, 25, 2, 25000.00, '0000-00-00 00:00:00', 1),
(10, 21, 3, 25001.00, '0000-00-00 00:00:00', 1);

--
-- Disparadores `puja`
--
DELIMITER $$
CREATE TRIGGER `after_puja_delete_auditoria` AFTER DELETE ON `puja` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        OLD.SUBASTA_ID, 
        OLD.USUARIO_ID, 
        NOW(), 
        'DELETE', 
        'puja', 
        CONCAT('Puja eliminada: ', OLD.PUJA_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_puja_insert` AFTER INSERT ON `puja` FOR EACH ROW BEGIN
  DECLARE vendedor_id INT;

  -- Obtener el vendedor_id relacionado con la subasta (de la tabla 'subasta')
  SELECT `USUARIO_ID` INTO vendedor_id
  FROM `subasta`
  WHERE `SUBASTA_ID` = NEW.SUBASTA_ID;

  -- Insertar los datos en la tabla 'participar'
  INSERT INTO `participar` (`SUBASTA_ID`, `USUARIO_ID`, `COMPRADOR_ID`)
  VALUES (NEW.SUBASTA_ID, vendedor_id, NEW.USUARIO_ID);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_puja_insert_auditoria` AFTER INSERT ON `puja` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NEW.USUARIO_ID, 
        NOW(), 
        'INSERT', 
        'puja', 
        CONCAT('Nueva puja insertada: ', NEW.PUJA_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_puja_update_auditoria` AFTER UPDATE ON `puja` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NEW.USUARIO_ID, 
        NOW(), 
        'UPDATE', 
        'puja', 
        CONCAT('Puja actualizada: ', NEW.PUJA_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_puja` BEFORE INSERT ON `puja` FOR EACH ROW BEGIN
    DECLARE user_role VARCHAR(64);

    -- Obtener el rol del usuario que intenta hacer la puja
    SELECT USUARIO_ROL INTO user_role 
    FROM usuario 
    WHERE USUARIO_ID = NEW.USUARIO_ID;

    -- Si el usuario no es comprador, se lanza un error
    IF user_role IS NULL OR user_role != 'comprador' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Solo los compradores pueden hacer una puja';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `verificar_estado_subasta` BEFORE INSERT ON `puja` FOR EACH ROW BEGIN
    -- Verificar si la subasta está inactiva (estado = 0)
    DECLARE estado INT;

    -- Obtener el estado de la subasta
    SELECT SUBASTA_ESTADO INTO estado
    FROM subasta
    WHERE SUBASTA_ID = NEW.SUBASTA_ID;

    -- Si la subasta está inactiva (estado = 0), se cancela la inserción
    IF estado = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se pueden realizar pujas, la subasta está inactiva.';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `verificar_puja` BEFORE INSERT ON `puja` FOR EACH ROW BEGIN
    DECLARE pago_final DECIMAL(10, 2);

    -- Obtén el valor de SUBASTA_PAGO_FINAL correspondiente a la SUBASTA_ID de la puja
    SELECT SUBASTA_PAGO_FINAL INTO pago_final
    FROM SUBASTA
    WHERE SUBASTA_ID = NEW.SUBASTA_ID;

    -- Verifica que el monto de la puja sea mayor que el SUBASTA_PAGO_FINAL
    IF NEW.PUJA_MONTO <= pago_final THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El monto de la puja debe ser mayor que el pago final de la subasta';
    ELSE
        -- Si el monto de la puja es mayor, actualiza SUBASTA_PAGO_FINAL con el nuevo monto de la puja
        UPDATE SUBASTA
        SET SUBASTA_PAGO_FINAL = NEW.PUJA_MONTO
        WHERE SUBASTA_ID = NEW.SUBASTA_ID;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subasta`
--

CREATE TABLE `subasta` (
  `SUBASTA_ID` int(11) NOT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  `VEHICULO_ID` int(11) NOT NULL,
  `SUBASTA_FECHA` datetime DEFAULT current_timestamp(),
  `SUBASTA_DURACION` time NOT NULL,
  `SUBASTA_ESTADO` tinyint(1) NOT NULL,
  `SUBASTA_PAGO_FINAL` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subasta`
--

INSERT INTO `subasta` (`SUBASTA_ID`, `USUARIO_ID`, `VEHICULO_ID`, `SUBASTA_FECHA`, `SUBASTA_DURACION`, `SUBASTA_ESTADO`, `SUBASTA_PAGO_FINAL`) VALUES
(1, 1, 1, '2022-01-01 10:00:00', '00:00:00', 0, 24000),
(2, 2, 2, '2022-01-01 10:00:00', '00:00:00', 0, 25000),
(3, 1, 1, '2025-03-11 03:53:44', '00:30:00', 1, 25001),
(4, 1, 1, '2025-03-11 03:54:09', '00:30:00', 1, 100000),
(5, 2, 21, '2025-03-11 03:54:11', '00:00:00', 0, 12000),
(7, 3, 3, '2025-03-11 23:36:08', '00:00:00', 0, 12000),
(8, 3, 3, '2025-03-11 23:45:02', '00:00:00', 0, 13500);

--
-- Disparadores `subasta`
--
DELIMITER $$
CREATE TRIGGER `after_subasta_delete` AFTER DELETE ON `subasta` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        OLD.SUBASTA_ID, 
        OLD.USUARIO_ID, 
        NOW(), 
        'DELETE', 
        'subasta', 
        CONCAT('Subasta eliminada: ', OLD.SUBASTA_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_subasta_insert` AFTER INSERT ON `subasta` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NEW.USUARIO_ID, 
        NOW(), 
        'INSERT', 
        'subasta', 
        CONCAT('Nueva subasta insertada: ', NEW.SUBASTA_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_subasta_update` AFTER UPDATE ON `subasta` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NEW.SUBASTA_ID, 
        NEW.USUARIO_ID, 
        NOW(), 
        'UPDATE', 
        'subasta', 
        CONCAT('Subasta actualizada: ', NEW.SUBASTA_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_UPDATE_subasta` BEFORE UPDATE ON `subasta` FOR EACH ROW BEGIN
    -- Actualiza el valor de SUBASTA_PAGO_FINAL con el precio base del vehículo
    DECLARE precio_base DECIMAL(10,2);
    
    -- Obtiene el precio base del vehículo
    SELECT VEHICULO_PRECIO_BASE INTO precio_base
    FROM vehiculo
    WHERE VEHICULO_ID = NEW.VEHICULO_ID;

    -- Asigna el precio base del vehículo a la columna SUBASTA_PAGO_FINAL
    SET NEW.SUBASTA_PAGO_FINAL = precio_base;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_subasta` BEFORE INSERT ON `subasta` FOR EACH ROW BEGIN
    -- Actualiza el valor de SUBASTA_PAGO_FINAL con el precio base del vehículo
    DECLARE precio_base DECIMAL(10,2);
    
    -- Obtiene el precio base del vehículo
    SELECT VEHICULO_PRECIO_BASE INTO precio_base
    FROM vehiculo
    WHERE VEHICULO_ID = NEW.VEHICULO_ID;

    -- Asigna el precio base del vehículo a la columna SUBASTA_PAGO_FINAL
    SET NEW.SUBASTA_PAGO_FINAL = precio_base;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_subasta_estado_before_insert` BEFORE INSERT ON `subasta` FOR EACH ROW BEGIN
    -- Si la duración es exactamente 00:00:00, asignar 0 a SUBASTA_ESTADO
    IF NEW.SUBASTA_DURACION = '00:00:00' THEN
        SET NEW.SUBASTA_ESTADO = 0;
    -- Si la duración es mayor que 00:00:00, asignar 1 a SUBASTA_ESTADO
    ELSEIF NEW.SUBASTA_DURACION > '00:00:00' THEN
        SET NEW.SUBASTA_ESTADO = 1;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_subasta_estado_before_update` BEFORE UPDATE ON `subasta` FOR EACH ROW BEGIN
    -- Si la duración es exactamente 00:00:00, asignar 0 a SUBASTA_ESTADO
    IF NEW.SUBASTA_DURACION = '00:00:00' THEN
        SET NEW.SUBASTA_ESTADO = 0;
    -- Si la duración es mayor que 00:00:00, asignar 1 a SUBASTA_ESTADO
    ELSEIF NEW.SUBASTA_DURACION > '00:00:00' THEN
        SET NEW.SUBASTA_ESTADO = 1;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_usuario_vehiculo_relation_before_insert` BEFORE INSERT ON `subasta` FOR EACH ROW BEGIN
    -- Verificar si el USUARIO_ID tiene el VEHICULO_ID correspondiente
    DECLARE vehiculo_usuario_id INT;
    
    -- Obtener el USUARIO_ID del vehículo que corresponde al VEHICULO_ID
    SELECT USUARIO_ID INTO vehiculo_usuario_id
    FROM vehiculo
    WHERE VEHICULO_ID = NEW.VEHICULO_ID;

    -- Comparar si el USUARIO_ID de la subasta coincide con el USUARIO_ID del vehículo
    IF NEW.USUARIO_ID != vehiculo_usuario_id THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El VEHICULO_ID no pertenece al USUARIO_ID proporcionado.';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `verificar_subasta_activa` BEFORE INSERT ON `subasta` FOR EACH ROW BEGIN
    -- Verificar si ya existe una subasta activa (estado = 1) para el mismo vehículo
    DECLARE subasta_activa INT;

    -- Verificar si hay alguna subasta activa para el vehículo
    SELECT COUNT(*) INTO subasta_activa
    FROM subasta
    WHERE VEHICULO_ID = NEW.VEHICULO_ID AND SUBASTA_ESTADO = 1;

    -- Si hay una subasta activa para el vehículo, se cancela la inserción
    IF subasta_activa > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ya existe una subasta activa para este vehículo.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `USUARIO_ID` int(11) NOT NULL,
  `USUARIO_NOMBRE` varchar(64) NOT NULL,
  `USUARIO_APELLIDO` varchar(64) NOT NULL,
  `USUARIO_CEDULA` int(11) NOT NULL,
  `USUARIO_HASH_PASSWORD` varchar(255) NOT NULL,
  `USUARIO_NUMERO_DE_CUENTA` int(11) NOT NULL,
  `USUARIO_ROL` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`USUARIO_ID`, `USUARIO_NOMBRE`, `USUARIO_APELLIDO`, `USUARIO_CEDULA`, `USUARIO_HASH_PASSWORD`, `USUARIO_NUMERO_DE_CUENTA`, `USUARIO_ROL`) VALUES
(1, 'Carlos', 'Gomez', 123456789, 'password_hash_1', 1000001, 'vendedor'),
(2, 'Ana', 'Lopez', 987654321, 'password_hash_2', 1000002, 'vendedor'),
(3, 'Pedro', 'Martinez', 112233445, 'password_hash_3', 1000003, 'vendedor'),
(4, 'Laura', 'Hernandez', 556677889, 'password_hash_4', 1000004, 'vendedor'),
(5, 'Jose', 'Perez', 223344556, 'password_hash_5', 1000005, 'vendedor'),
(6, 'Miguel', 'Rodriguez', 778899334, 'password_hash_6', 1000006, 'vendedor'),
(7, 'Maria', 'Sanchez', 334455667, 'password_hash_7', 1000007, 'vendedor'),
(8, 'David', 'Ramirez', 445566778, 'password_hash_8', 1000008, 'vendedor'),
(9, 'Javier', 'Garcia', 223355667, 'password_hash_9', 1000009, 'vendedor'),
(10, 'Elena', 'Martinez', 667788990, 'password_hash_10', 1000010, 'vendedor'),
(11, 'Antonio', 'Gonzalez', 112233998, 'password_hash_11', 1000011, 'vendedor'),
(12, 'Silvia', 'Fernandez', 445577889, 'password_hash_12', 1000012, 'vendedor'),
(13, 'Luis', 'Diaz', 998877665, 'password_hash_13', 1000013, 'vendedor'),
(14, 'Raul', 'Moreno', 443322111, 'password_hash_14', 1000014, 'vendedor'),
(15, 'Sofia', 'Alvarez', 111223344, 'password_hash_15', 1000015, 'vendedor'),
(16, 'Fernando', 'Jimenez', 667788444, 'password_hash_16', 1000016, 'vendedor'),
(17, 'Patricia', 'Serrano', 443322555, 'password_hash_17', 1000017, 'vendedor'),
(18, 'Juan', 'Vazquez', 332211998, 'password_hash_18', 1000018, 'vendedor'),
(19, 'Carlos', 'Lopez', 887766554, 'password_hash_19', 1000019, 'vendedor'),
(20, 'Monica', 'Ruiz', 556677223, 'password_hash_20', 1000020, 'vendedor'),
(21, 'Luis', 'Torres', 223344557, 'password_hash_21', 1000021, 'comprador'),
(22, 'Lucia', 'Morales', 998877665, 'password_hash_22', 1000022, 'comprador'),
(23, 'Pedro', 'Gonzalez', 445566223, 'password_hash_23', 1000023, 'comprador'),
(24, 'Ana', 'Rodriguez', 667788224, 'password_hash_24', 1000024, 'comprador'),
(25, 'Victor', 'Castro', 223344776, 'password_hash_25', 1000025, 'comprador'),
(26, 'Isabel', 'Martinez', 335577223, 'password_hash_26', 1000026, 'comprador'),
(27, 'Carlos', 'Perez', 776633223, 'password_hash_27', 1000027, 'comprador'),
(28, 'Sofia', 'Serrano', 445566223, 'password_hash_28', 1000028, 'comprador'),
(29, 'Ricardo', 'Diaz', 667788224, 'password_hash_29', 1000029, 'comprador'),
(30, 'Monica', 'Vazquez', 556677882, 'password_hash_30', 1000030, 'comprador'),
(31, 'David', 'Garcia', 998877556, 'password_hash_31', 1000031, 'comprador'),
(32, 'Jose', 'Alvarez', 667788223, 'password_hash_32', 1000032, 'comprador'),
(33, 'Laura', 'Lopez', 554433998, 'password_hash_33', 1000033, 'comprador'),
(34, 'Javier', 'Serrano', 998877665, 'password_hash_34', 1000034, 'comprador'),
(35, 'Raul', 'Ruiz', 667788221, 'password_hash_35', 1000035, 'comprador'),
(36, 'Patricia', 'Jimenez', 887766224, 'password_hash_36', 1000036, 'comprador'),
(37, 'Fernando', 'Morales', 778899445, 'password_hash_37', 1000037, 'comprador'),
(38, 'Maria', 'Gonzalez', 998877332, 'password_hash_38', 1000038, 'comprador'),
(39, 'Antonio', 'Castro', 445566221, 'password_hash_39', 1000039, 'comprador'),
(40, 'Juan', 'Torres', 667788334, 'password_hash_40', 1000040, 'comprador'),
(41, 'Marta', 'Alvarez', 332211887, 'password_hash_41', 1000041, 'comprador'),
(42, 'Oscar', 'Vazquez', 998877665, 'password_hash_42', 1000042, 'comprador'),
(43, 'Beatriz', 'Jimenez', 778899332, 'password_hash_43', 1000043, 'comprador'),
(44, 'Hector', 'Morales', 667788443, 'password_hash_44', 1000044, 'comprador'),
(45, 'Gabriela', 'Serrano', 998877667, 'password_hash_45', 1000045, 'comprador'),
(46, 'Raul', 'Garcia', 998877555, 'password_hash_46', 1000046, 'comprador'),
(47, 'Paula', 'Sanchez', 556677445, 'password_hash_47', 1000047, 'comprador'),
(48, 'Daniel', 'Lopez', 667788223, 'password_hash_48', 1000048, 'comprador'),
(49, 'Victor', 'Martinez', 998877667, 'password_hash_49', 1000049, 'comprador'),
(50, 'Eva', 'Perez', 667788998, 'password_hash_50', 1000050, 'comprador'),
(51, 'Bryan', 'Quispe', 564654656, 'asdasdsa', 1000051, 'comprador'),
(53, 'Juan', 'Perez', 515454444, '564564sdasd', 1000052, 'vendedor'),
(54, 'sadsad', 'asdsad', 456546456, 'sadsad', 52454565, 'comprador'),
(55, 'fsagsag', 'gasgsag', 456546654, 'fdsgsdfgsd', 1225455, 'vendedor');

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `after_usuario_delete_auditoria` AFTER DELETE ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        OLD.USUARIO_ID, 
        NOW(), 
        'DELETE', 
        'usuario', 
        CONCAT('Usuario eliminado: ', OLD.USUARIO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_usuario_insert` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
    -- Verifica si el rol del usuario es 'vendedor'
    IF NEW.USUARIO_ROL = 'vendedor' THEN
        -- Inserta el USUARIO_ID en la tabla VENDEDOR
        INSERT INTO VENDEDOR (USUARIO_ID) VALUES (NEW.USUARIO_ID);
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_usuario_insert_auditoria` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        NEW.USUARIO_ID, 
        NOW(), 
        'INSERT', 
        'usuario', 
        CONCAT('Nuevo usuario insertado: ', NEW.USUARIO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_usuario_insert_comprador` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
    -- Verifica si el rol del usuario es 'vendedor'
    IF NEW.USUARIO_ROL = 'comprador' THEN
        -- Inserta el USUARIO_ID en la tabla VENDEDOR
        INSERT INTO COMPRADOR (USUARIO_ID) VALUES (NEW.USUARIO_ID);
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_usuario_update_auditoria` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        NEW.USUARIO_ID, 
        NOW(), 
        'UPDATE', 
        'usuario', 
        CONCAT('Usuario actualizado: ', NEW.USUARIO_ID)
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `VEHICULO_ID` int(11) NOT NULL,
  `USUARIO_ID` int(11) DEFAULT NULL,
  `VEHICULO_PLACA` varchar(7) NOT NULL,
  `VEHICULO_MARCA` varchar(32) NOT NULL,
  `VEHICULO_MODELO` varchar(32) NOT NULL,
  `VEHICULO_FECHA_DE_COMPRA` date NOT NULL,
  `VEHICULO_PRECIO_BASE` decimal(10,2) NOT NULL,
  `VEHICULO_DETALLE` varchar(128) DEFAULT NULL,
  `VEHICULO_ESTADO_DE_VENTA` int(1) NOT NULL,
  `VEHICULO_KILOMETRAJE` bigint(20) NOT NULL,
  `VEHICULO_VECES_SUBASTADO` int(11) NOT NULL,
  `VEHICULO_AVALUO_ANT` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`VEHICULO_ID`, `USUARIO_ID`, `VEHICULO_PLACA`, `VEHICULO_MARCA`, `VEHICULO_MODELO`, `VEHICULO_FECHA_DE_COMPRA`, `VEHICULO_PRECIO_BASE`, `VEHICULO_DETALLE`, `VEHICULO_ESTADO_DE_VENTA`, `VEHICULO_KILOMETRAJE`, `VEHICULO_VECES_SUBASTADO`, `VEHICULO_AVALUO_ANT`) VALUES
(1, 1, 'ABC1234', 'Toyota', 'Corolla', '2022-05-10', 14500.00, 'Detalles adicionales del vehículo 1', 2, 50000, 1, 14500.00),
(2, 2, 'XYZ5678', 'Honda', 'Civic', '2021-08-15', 15500.00, 'Detalles adicionales del vehículo 2', 0, 60000, 0, 15500.00),
(3, 3, 'JKL9876', 'Ford', 'Focus', '2023-01-20', 13500.00, 'Detalles adicionales del vehículo 3', 1, 30000, 2, 13500.00),
(4, 4, 'MNO6543', 'Chevrolet', 'Malibu', '2020-11-30', 15000.00, 'Detalles adicionales del vehículo 4', 0, 70000, 3, 15000.00),
(5, 5, 'QRS3210', 'Nissan', 'Sentra', '2019-07-12', 13000.00, 'Detalles adicionales del vehículo 5', 1, 80000, 1, 13000.00),
(6, 6, 'TUV4567', 'Hyundai', 'Elantra', '2023-06-25', 16500.00, 'Detalles adicionales del vehículo 6', 0, 25000, 0, 16500.00),
(7, 7, 'WXY7890', 'Kia', 'Forte', '2022-02-14', 14000.00, 'Detalles adicionales del vehículo 7', 1, 45000, 2, 14000.00),
(8, 8, 'BCD2345', 'Mazda', '3', '2021-04-18', 15500.00, 'Detalles adicionales del vehículo 8', 0, 55000, 3, 15500.00),
(9, 9, 'EFG6789', 'Volkswagen', 'Jetta', '2020-09-10', 14500.00, 'Detalles adicionales del vehículo 9', 1, 68000, 1, 14500.00),
(10, 10, 'HIJ3456', 'Subaru', 'Impreza', '2019-12-05', 14000.00, 'Detalles adicionales del vehículo 10', 0, 75000, 0, 14000.00),
(11, 11, 'KLM7891', 'Toyota', 'Camry', '2022-07-30', 19500.00, 'Detalles adicionales del vehículo 11', 1, 40000, 1, 19500.00),
(12, 12, 'NOP5678', 'Honda', 'Accord', '2021-10-22', 20500.00, 'Detalles adicionales del vehículo 12', 0, 50000, 2, 20500.00),
(13, 13, 'PQR8901', 'Ford', 'Fusion', '2020-05-15', 19000.00, 'Detalles adicionales del vehículo 13', 1, 60000, 3, 19000.00),
(14, 14, 'STU4321', 'Chevrolet', 'Cruze', '2019-03-27', 18000.00, 'Detalles adicionales del vehículo 14', 0, 72000, 0, 18000.00),
(15, 15, 'VWX1234', 'Nissan', 'Altima', '2023-02-10', 21500.00, 'Detalles adicionales del vehículo 15', 1, 30000, 1, 21500.00),
(16, 16, 'YZA3456', 'Hyundai', 'Sonata', '2022-11-08', 22500.00, 'Detalles adicionales del vehículo 16', 0, 35000, 2, 22500.00),
(17, 17, 'BCD5678', 'Kia', 'Optima', '2021-06-12', 22000.00, 'Detalles adicionales del vehículo 17', 1, 45000, 3, 22000.00),
(18, 18, 'EFG7890', 'Mazda', '6', '2020-08-24', 20500.00, 'Detalles adicionales del vehículo 18', 0, 55000, 0, 20500.00),
(19, 19, 'HIJ1234', 'Volkswagen', 'Passat', '2019-04-14', 19500.00, 'Detalles adicionales del vehículo 19', 1, 65000, 1, 19500.00),
(20, 20, 'KLM4567', 'Subaru', 'Legacy', '2023-09-01', 23500.00, 'Detalles adicionales del vehículo 20', 0, 28000, 2, 23500.00),
(21, 2, 'dsfsdfd', 'Toyota', 'Toyota', '2023-09-01', 12000.00, 'nada', 2, 25000, 0, 24000.00);

--
-- Disparadores `vehiculo`
--
DELIMITER $$
CREATE TRIGGER `after_vehiculo_delete` AFTER DELETE ON `vehiculo` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        OLD.USUARIO_ID, 
        NOW(), 
        'DELETE', 
        'vehiculo', 
        CONCAT('Vehículo eliminado: ', OLD.VEHICULO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_vehiculo_insert` AFTER INSERT ON `vehiculo` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        NEW.USUARIO_ID, 
        NOW(), 
        'INSERT', 
        'vehiculo', 
        CONCAT('Nuevo vehículo insertado: ', NEW.VEHICULO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_vehiculo_update` AFTER UPDATE ON `vehiculo` FOR EACH ROW BEGIN
    INSERT INTO `auditoria` (
        `SUBASTA_ID`, 
        `AUDITORIA_USUARIO_ID`, 
        `AUDITORIA_FECHA_HORA`, 
        `AUDITORIA_ACCION`, 
        `AUDITORIA_TABLA_AFECTADA`, 
        `AUDITORIA_DETALLE_CAMBIO`
    ) VALUES (
        NULL, 
        NEW.USUARIO_ID, 
        NOW(), 
        'UPDATE', 
        'vehiculo', 
        CONCAT('Vehículo actualizado: ', NEW.VEHICULO_ID)
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_validar_precio_base_avaluo` BEFORE INSERT ON `vehiculo` FOR EACH ROW BEGIN
    -- Verificar si el precio base es mayor que el avaluo
    IF NEW.VEHICULO_PRECIO_BASE > NEW.vehiculo_avaluo_ANT THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El precio base no puede ser mayor que el avaluo';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_validar_precio_base_avaluo_update` BEFORE UPDATE ON `vehiculo` FOR EACH ROW BEGIN
    -- Verificar si el precio base es mayor que el avaluo
    IF NEW.VEHICULO_PRECIO_BASE > NEW.vehiculo_avaluo_ANT THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El precio base no puede ser mayor que el avaluo';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validar_vendedor_trigger` BEFORE INSERT ON `vehiculo` FOR EACH ROW BEGIN
    -- Verifica si el usuario_id está en la tabla Vendedor
    IF NOT EXISTS (SELECT 1 FROM Vendedor WHERE usuario_id = NEW.usuario_id) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'El usuario no es un vendedor y no puede registrar vehículos';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `USUARIO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`USUARIO_ID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(53),
(55);

--
-- Disparadores `vendedor`
--
DELIMITER $$
CREATE TRIGGER `trg_vendedor_delete` AFTER DELETE ON `vendedor` FOR EACH ROW BEGIN
    INSERT INTO auditoria (SUBASTA_ID, AUDITORIA_USUARIO_ID, AUDITORIA_FECHA_HORA, AUDITORIA_ACCION, AUDITORIA_TABLA_AFECTADA, AUDITORIA_DETALLE_CAMBIO)
    VALUES (NULL, OLD.USUARIO_ID, NOW(), 'DELETE', 'vendedor', CONCAT('Vendedor con USUARIO_ID ', OLD.USUARIO_ID, ' eliminado.'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_vendedor_insert` AFTER INSERT ON `vendedor` FOR EACH ROW BEGIN
    INSERT INTO auditoria (SUBASTA_ID, AUDITORIA_USUARIO_ID, AUDITORIA_FECHA_HORA, AUDITORIA_ACCION, AUDITORIA_TABLA_AFECTADA, AUDITORIA_DETALLE_CAMBIO)
    VALUES (NULL, NEW.USUARIO_ID, NOW(), 'INSERT', 'vendedor', CONCAT('Nuevo vendedor agregado con USUARIO_ID ', NEW.USUARIO_ID));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_vendedor_update` AFTER UPDATE ON `vendedor` FOR EACH ROW BEGIN
    INSERT INTO auditoria (SUBASTA_ID, AUDITORIA_USUARIO_ID, AUDITORIA_FECHA_HORA, AUDITORIA_ACCION, AUDITORIA_TABLA_AFECTADA, AUDITORIA_DETALLE_CAMBIO)
    VALUES (NULL, NEW.USUARIO_ID, NOW(), 'UPDATE', 'vendedor', CONCAT('Vendedor con USUARIO_ID ', OLD.USUARIO_ID, ' actualizado.'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_acciones_auditoria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_acciones_auditoria` (
`AUDITORIA_FECHA_HORA` datetime
,`USUARIO_NOMBRE` varchar(64)
,`AUDITORIA_ACCION` varchar(128)
,`AUDITORIA_TABLA_AFECTADA` varchar(32)
,`AUDITORIA_DETALLE_CAMBIO` varchar(128)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_autos_subastados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_autos_subastados` (
`SUBASTA_ID` int(11)
,`MARCA` varchar(32)
,`MODELO` varchar(32)
,`VENDEDOR` varchar(64)
,`TOTAL_PUJAS` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_autos_subastados_multiple_veces`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_autos_subastados_multiple_veces` (
`VEHICULO_ID` int(11)
,`MARCA` varchar(32)
,`MODELO` varchar(32)
,`VECES_SUBASTADO` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_autos_vendidos_bajo_90_precio_base`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_autos_vendidos_bajo_90_precio_base` (
`MARCA` varchar(32)
,`MODELO` varchar(32)
,`PRECIO_BASE` decimal(10,0)
,`PRECIO_FINAL` float(8,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_comprador_mayor_gasto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_comprador_mayor_gasto` (
`USUARIO_NOMBRE` varchar(64)
,`TOTAL_GASTADO` double(19,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_evolucion_precio_promedio`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_evolucion_precio_promedio` (
`ANIO` int(4)
,`PRECIO_PROMEDIO` double(12,6)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ganadores_subastas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ganadores_subastas` (
`PUJA_ID` int(11)
,`USUARIO_ID` int(11)
,`SUBASTA_ID` int(11)
,`PUJA_MONTO` float(8,2)
,`PUJA_HORA` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_historial_pujas_usuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_historial_pujas_usuario` (
`USUARIO_NOMBRE` varchar(64)
,`MARCA` varchar(32)
,`MODELO` varchar(32)
,`PUJA_HORA` datetime
,`PUJA_MONTO` float(8,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_incremento_precio_promedio`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_incremento_precio_promedio` (
`MARCA` varchar(32)
,`MODELO` varchar(32)
,`INCREMENTO_PROMEDIO` decimal(17,6)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_informacion_pagos_ganadores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_informacion_pagos_ganadores` (
`USUARIO_NOMBRE` varchar(64)
,`SUBASTA_PAGO_FINAL` decimal(10,0)
,`PAGO_FECHA` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_subastas_mayor_pujas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_subastas_mayor_pujas` (
`SUBASTA_ID` int(11)
,`MARCA` varchar(32)
,`MODELO` varchar(32)
,`TOTAL_PUJAS` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_usuario_mayor_pujas_diarias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_usuario_mayor_pujas_diarias` (
`USUARIO_ID` int(11)
,`USUARIO_NOMBRE` varchar(64)
,`FECHA` date
,`TOTAL_PUJAS` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_vendedores_mas_autos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_vendedores_mas_autos` (
`USUARIO_NOMBRE` varchar(64)
,`AUTOS_SUBASTADOS` bigint(21)
,`PORCENTAJE_VENTAS` decimal(30,5)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_acciones_auditoria`
--
DROP TABLE IF EXISTS `vw_acciones_auditoria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_acciones_auditoria`  AS SELECT `a`.`AUDITORIA_FECHA_HORA` AS `AUDITORIA_FECHA_HORA`, `u`.`USUARIO_NOMBRE` AS `USUARIO_NOMBRE`, `a`.`AUDITORIA_ACCION` AS `AUDITORIA_ACCION`, `a`.`AUDITORIA_TABLA_AFECTADA` AS `AUDITORIA_TABLA_AFECTADA`, `a`.`AUDITORIA_DETALLE_CAMBIO` AS `AUDITORIA_DETALLE_CAMBIO` FROM (`auditoria` `a` join `usuario` `u` on(`a`.`AUDITORIA_USUARIO_ID` = `u`.`USUARIO_ID`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_autos_subastados`
--
DROP TABLE IF EXISTS `vw_autos_subastados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_autos_subastados`  AS SELECT `s`.`SUBASTA_ID` AS `SUBASTA_ID`, `v`.`VEHICULO_MARCA` AS `MARCA`, `v`.`VEHICULO_MODELO` AS `MODELO`, `u`.`USUARIO_NOMBRE` AS `VENDEDOR`, count(`p`.`PUJA_ID`) AS `TOTAL_PUJAS` FROM ((((`subasta` `s` join `vehiculo` `v` on(`s`.`VEHICULO_ID` = `v`.`VEHICULO_ID`)) join `vendedor` `ven` on(`v`.`USUARIO_ID` = `ven`.`USUARIO_ID`)) join `usuario` `u` on(`ven`.`USUARIO_ID` = `u`.`USUARIO_ID`)) left join `puja` `p` on(`s`.`SUBASTA_ID` = `p`.`SUBASTA_ID`)) WHERE `s`.`SUBASTA_ESTADO` = 1 GROUP BY `s`.`SUBASTA_ID` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_autos_subastados_multiple_veces`
--
DROP TABLE IF EXISTS `vw_autos_subastados_multiple_veces`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_autos_subastados_multiple_veces`  AS SELECT `v`.`VEHICULO_ID` AS `VEHICULO_ID`, `v`.`VEHICULO_MARCA` AS `MARCA`, `v`.`VEHICULO_MODELO` AS `MODELO`, count(`s`.`SUBASTA_ID`) AS `VECES_SUBASTADO` FROM (`vehiculo` `v` join `subasta` `s` on(`v`.`VEHICULO_ID` = `s`.`VEHICULO_ID`)) WHERE `s`.`SUBASTA_ESTADO` = 0 OR 1 GROUP BY `v`.`VEHICULO_ID` HAVING count(`s`.`SUBASTA_ID`) > 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_autos_vendidos_bajo_90_precio_base`
--
DROP TABLE IF EXISTS `vw_autos_vendidos_bajo_90_precio_base`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_autos_vendidos_bajo_90_precio_base`  AS SELECT `v`.`VEHICULO_MARCA` AS `MARCA`, `v`.`VEHICULO_MODELO` AS `MODELO`, `s`.`SUBASTA_PAGO_FINAL` AS `PRECIO_BASE`, `p`.`PUJA_MONTO` AS `PRECIO_FINAL` FROM ((`subasta` `s` join `vehiculo` `v` on(`s`.`VEHICULO_ID` = `v`.`VEHICULO_ID`)) join `puja` `p` on(`s`.`SUBASTA_ID` = `p`.`SUBASTA_ID`)) WHERE `p`.`PUJA_MONTO` = (select max(`p2`.`PUJA_MONTO`) from `puja` `p2` where `p2`.`SUBASTA_ID` = `s`.`SUBASTA_ID`) AND `p`.`PUJA_MONTO` < 0.9 * `s`.`SUBASTA_PAGO_FINAL` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_comprador_mayor_gasto`
--
DROP TABLE IF EXISTS `vw_comprador_mayor_gasto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_comprador_mayor_gasto`  AS SELECT `u`.`USUARIO_NOMBRE` AS `USUARIO_NOMBRE`, sum(`p`.`PUJA_MONTO`) AS `TOTAL_GASTADO` FROM (`puja` `p` join `usuario` `u` on(`p`.`USUARIO_ID` = `u`.`USUARIO_ID`)) WHERE `p`.`PUJA_MONTO` = (select max(`p2`.`PUJA_MONTO`) from `puja` `p2` where `p2`.`SUBASTA_ID` = `p`.`SUBASTA_ID`) GROUP BY `u`.`USUARIO_ID` ORDER BY sum(`p`.`PUJA_MONTO`) DESC LIMIT 0, 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_evolucion_precio_promedio`
--
DROP TABLE IF EXISTS `vw_evolucion_precio_promedio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_evolucion_precio_promedio`  AS SELECT year(`s`.`SUBASTA_FECHA`) AS `ANIO`, avg(`p`.`PUJA_MONTO`) AS `PRECIO_PROMEDIO` FROM (`subasta` `s` join `puja` `p` on(`s`.`SUBASTA_ID` = `p`.`SUBASTA_ID`)) WHERE `p`.`PUJA_MONTO` = (select max(`p2`.`PUJA_MONTO`) from `puja` `p2` where `p2`.`SUBASTA_ID` = `s`.`SUBASTA_ID`) GROUP BY year(`s`.`SUBASTA_FECHA`) ORDER BY year(`s`.`SUBASTA_FECHA`) ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ganadores_subastas`
--
DROP TABLE IF EXISTS `vw_ganadores_subastas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_ganadores_subastas`  AS SELECT `p`.`PUJA_ID` AS `PUJA_ID`, `p`.`USUARIO_ID` AS `USUARIO_ID`, `p`.`SUBASTA_ID` AS `SUBASTA_ID`, `p`.`PUJA_MONTO` AS `PUJA_MONTO`, `p`.`PUJA_HORA` AS `PUJA_HORA` FROM (`puja` `p` join `subasta` `s` on(`p`.`SUBASTA_ID` = `s`.`SUBASTA_ID`)) WHERE `p`.`PUJA_MONTO` = `s`.`SUBASTA_PAGO_FINAL` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_historial_pujas_usuario`
--
DROP TABLE IF EXISTS `vw_historial_pujas_usuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_historial_pujas_usuario`  AS SELECT `u`.`USUARIO_NOMBRE` AS `USUARIO_NOMBRE`, `v`.`VEHICULO_MARCA` AS `MARCA`, `v`.`VEHICULO_MODELO` AS `MODELO`, `p`.`PUJA_HORA` AS `PUJA_HORA`, `p`.`PUJA_MONTO` AS `PUJA_MONTO` FROM (((`puja` `p` join `usuario` `u` on(`p`.`USUARIO_ID` = `u`.`USUARIO_ID`)) join `subasta` `s` on(`p`.`SUBASTA_ID` = `s`.`SUBASTA_ID`)) join `vehiculo` `v` on(`s`.`VEHICULO_ID` = `v`.`VEHICULO_ID`)) WHERE `u`.`USUARIO_ID` = 21 ORDER BY `p`.`PUJA_HORA` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_incremento_precio_promedio`
--
DROP TABLE IF EXISTS `vw_incremento_precio_promedio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_incremento_precio_promedio`  AS SELECT `v`.`VEHICULO_MARCA` AS `MARCA`, `v`.`VEHICULO_MODELO` AS `MODELO`, avg(`s`.`SUBASTA_PAGO_FINAL` - `v`.`VEHICULO_PRECIO_BASE`) AS `INCREMENTO_PROMEDIO` FROM ((`vehiculo` `v` join `subasta` `s` on(`v`.`VEHICULO_ID` = `s`.`VEHICULO_ID`)) left join `pago` `p` on(`p`.`SUBASTA_ID` = `s`.`SUBASTA_ID`)) WHERE `v`.`VEHICULO_ESTADO_DE_VENTA` = 2 AND (`s`.`SUBASTA_ESTADO` = 0 OR `p`.`PAGO_ID` is not null) AND `s`.`SUBASTA_PAGO_FINAL` > `v`.`VEHICULO_PRECIO_BASE` GROUP BY `v`.`VEHICULO_MARCA`, `v`.`VEHICULO_MODELO` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_informacion_pagos_ganadores`
--
DROP TABLE IF EXISTS `vw_informacion_pagos_ganadores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_informacion_pagos_ganadores`  AS SELECT `u`.`USUARIO_NOMBRE` AS `USUARIO_NOMBRE`, `s`.`SUBASTA_PAGO_FINAL` AS `SUBASTA_PAGO_FINAL`, `pa`.`PAGO_FECHA` AS `PAGO_FECHA` FROM ((`pago` `pa` join `subasta` `s` on(`pa`.`SUBASTA_ID` = `s`.`SUBASTA_ID`)) join `usuario` `u` on(`s`.`USUARIO_ID` = `u`.`USUARIO_ID`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_subastas_mayor_pujas`
--
DROP TABLE IF EXISTS `vw_subastas_mayor_pujas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_subastas_mayor_pujas`  AS SELECT `s`.`SUBASTA_ID` AS `SUBASTA_ID`, `v`.`VEHICULO_MARCA` AS `MARCA`, `v`.`VEHICULO_MODELO` AS `MODELO`, count(`p`.`PUJA_ID`) AS `TOTAL_PUJAS` FROM ((`subasta` `s` join `vehiculo` `v` on(`s`.`VEHICULO_ID` = `v`.`VEHICULO_ID`)) left join `puja` `p` on(`s`.`SUBASTA_ID` = `p`.`SUBASTA_ID`)) GROUP BY `s`.`SUBASTA_ID` ORDER BY count(`p`.`PUJA_ID`) DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_usuario_mayor_pujas_diarias`
--
DROP TABLE IF EXISTS `vw_usuario_mayor_pujas_diarias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_usuario_mayor_pujas_diarias`  AS SELECT `p`.`USUARIO_ID` AS `USUARIO_ID`, `u`.`USUARIO_NOMBRE` AS `USUARIO_NOMBRE`, cast(`p`.`PUJA_HORA` as date) AS `FECHA`, count(`p`.`PUJA_ID`) AS `TOTAL_PUJAS` FROM (`puja` `p` join `usuario` `u` on(`p`.`USUARIO_ID` = `u`.`USUARIO_ID`)) GROUP BY `p`.`USUARIO_ID`, cast(`p`.`PUJA_HORA` as date) ORDER BY count(`p`.`PUJA_ID`) DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_vendedores_mas_autos`
--
DROP TABLE IF EXISTS `vw_vendedores_mas_autos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_vendedores_mas_autos`  AS SELECT `u`.`USUARIO_NOMBRE` AS `USUARIO_NOMBRE`, count(`v`.`VEHICULO_ID`) AS `AUTOS_SUBASTADOS`, sum(case when `v`.`VEHICULO_ESTADO_DE_VENTA` = 2 then 1 else 0 end) * 100.0 / count(`v`.`VEHICULO_ID`) AS `PORCENTAJE_VENTAS` FROM (((`vendedor` `ven` join `usuario` `u` on(`ven`.`USUARIO_ID` = `u`.`USUARIO_ID`)) join `vehiculo` `v` on(`ven`.`USUARIO_ID` = `v`.`USUARIO_ID`)) left join `subasta` `s` on(`v`.`VEHICULO_ID` = `s`.`VEHICULO_ID`)) GROUP BY `u`.`USUARIO_ID` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`AUDITORIA_ID`),
  ADD KEY `FK_REGISTRAR` (`SUBASTA_ID`);

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`USUARIO_ID`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`PAGO_ID`),
  ADD KEY `FK_HACER2` (`SUBASTA_ID`);

--
-- Indices de la tabla `participar`
--
ALTER TABLE `participar`
  ADD PRIMARY KEY (`SUBASTA_ID`,`COMPRADOR_ID`),
  ADD KEY `COMPRADOR_ID` (`COMPRADOR_ID`);

--
-- Indices de la tabla `puja`
--
ALTER TABLE `puja`
  ADD PRIMARY KEY (`PUJA_ID`),
  ADD KEY `FK_REALIZAR` (`USUARIO_ID`),
  ADD KEY `FK_RECIVE` (`SUBASTA_ID`);

--
-- Indices de la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD PRIMARY KEY (`SUBASTA_ID`),
  ADD KEY `FK_ESTAR` (`VEHICULO_ID`),
  ADD KEY `FK_VENDER` (`USUARIO_ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`USUARIO_ID`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`VEHICULO_ID`),
  ADD KEY `FK_OFRECER` (`USUARIO_ID`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`USUARIO_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `AUDITORIA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `PAGO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `puja`
--
ALTER TABLE `puja`
  MODIFY `PUJA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `subasta`
--
ALTER TABLE `subasta`
  MODIFY `SUBASTA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `USUARIO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `VEHICULO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD CONSTRAINT `FK_REGISTRAR` FOREIGN KEY (`SUBASTA_ID`) REFERENCES `subasta` (`SUBASTA_ID`);

--
-- Filtros para la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD CONSTRAINT `FK_ES2` FOREIGN KEY (`USUARIO_ID`) REFERENCES `usuario` (`USUARIO_ID`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `FK_HACER2` FOREIGN KEY (`SUBASTA_ID`) REFERENCES `subasta` (`SUBASTA_ID`);

--
-- Filtros para la tabla `participar`
--
ALTER TABLE `participar`
  ADD CONSTRAINT `participar_ibfk_1` FOREIGN KEY (`SUBASTA_ID`) REFERENCES `subasta` (`SUBASTA_ID`),
  ADD CONSTRAINT `participar_ibfk_2` FOREIGN KEY (`COMPRADOR_ID`) REFERENCES `comprador` (`USUARIO_ID`);

--
-- Filtros para la tabla `puja`
--
ALTER TABLE `puja`
  ADD CONSTRAINT `FK_REALIZAR` FOREIGN KEY (`USUARIO_ID`) REFERENCES `comprador` (`USUARIO_ID`),
  ADD CONSTRAINT `FK_RECIVE` FOREIGN KEY (`SUBASTA_ID`) REFERENCES `subasta` (`SUBASTA_ID`);

--
-- Filtros para la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD CONSTRAINT `FK_ESTAR` FOREIGN KEY (`VEHICULO_ID`) REFERENCES `vehiculo` (`VEHICULO_ID`),
  ADD CONSTRAINT `FK_VENDER` FOREIGN KEY (`USUARIO_ID`) REFERENCES `vendedor` (`USUARIO_ID`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `FK_OFRECER` FOREIGN KEY (`USUARIO_ID`) REFERENCES `vendedor` (`USUARIO_ID`);

--
-- Filtros para la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `FK_ES` FOREIGN KEY (`USUARIO_ID`) REFERENCES `usuario` (`USUARIO_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
