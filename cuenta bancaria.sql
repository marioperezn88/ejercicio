CREATE TABLE `cuenta_bancaria` (
  `banco` varchar(45) NOT NULL,
  `sucursal` varchar(45) NOT NULL,
  `digito_control` int(11) NOT NULL,
  `num_cuenta` int(11) NOT NULL,
  PRIMARY KEY (`banco`),
  KEY `PK_CUENTA_ID_CLIENTE_idx` (`num_cuenta`),
  CONSTRAINT `FK_CUENTA_ID_CLIENTE` FOREIGN KEY (`num_cuenta`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PK_CUENTA_ID_CLIENTE` FOREIGN KEY (`num_cuenta`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
