CREATE TABLE `detalles` (
  `id_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `precio` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `producto` varchar(45) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_pedidos`,`id_producto`),
  KEY `PK_DETALLES_PRODUCTO_idx` (`id_producto`),
  CONSTRAINT `FK_DETALLES_PEDIDO` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id_pedidos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_DETALLES_PRODUCTO` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;