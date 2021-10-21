use bc_db;

CREATE TABLE `member` (
  `id` varchar(15) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(8) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `admin` (
  `admin_id` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `customer` (
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `eamil` varchar(45) COLLATE utf8_bin NOT NULL,
  `recommend_id` int(11) NOT NULL DEFAULT '0',
  `personal_data` int(11) NOT NULL,
  UNIQUE KEY `eamil_UNIQUE` (`eamil`),
  KEY `costomer_id` (`customer_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `customer_address` (
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `customer_address` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`customer_id`),
  CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `seller` (
  `seller_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `SNO` int(10) unsigned NOT NULL,
  `Sname` varchar(20) COLLATE utf8_bin NOT NULL,
  `adress` varchar(45) COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`Sname`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `product` (
  `product_num` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Sname` varchar(20) COLLATE utf8_bin NOT NULL,
  `product_category` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_weight` int(11) NOT NULL,
  `product_discount` int(11) NOT NULL DEFAULT '0',
  `product_date` date NOT NULL,
  `product_stock` int(11) NOT NULL DEFAULT '0',
  `product_expiration_date` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_handling` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_material` varchar(1000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_num`),
  KEY `pd_pnum_fk` (`Sname`),
  CONSTRAINT `pd_pnum_fk` FOREIGN KEY (`Sname`) REFERENCES `seller` (`Sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `product_img` (
  `product_num` int(11) DEFAULT NULL,
  `product_original_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_img_location` int(11) DEFAULT NULL,
  KEY `pdi_pnum_fk` (`product_num`),
  CONSTRAINT `pdi_pnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `review` (
  `review_idx` int(11) NOT NULL AUTO_INCREMENT,
  `product_num` int(11) NOT NULL,
  `review_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_subject` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_content` varchar(255) COLLATE utf8_bin NOT NULL,
  `review_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_score` float NOT NULL,
  `review_date` date NOT NULL,
  PRIMARY KEY (`review_idx`),
  KEY `rv_pdnum_fk` (`product_num`),
  CONSTRAINT `rv_pdnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE basket(
   basket_idx int(11) PRIMARY KEY AUTO_INCREMENT,
   product_num int(11) NOT NULL,
   customer_id varchar(15) NOT NULL,
   basket_count INT NOT NULL DEFAULT '0',
   CONSTRAINT bask_id_fk FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
   CONSTRAINT bask_pdnum_fk FOREIGN KEY (product_num) REFERENCES product(product_num)
); 

