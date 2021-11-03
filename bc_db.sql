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
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `recommend_id` int(11) NOT NULL DEFAULT '0',
  `personal_data` int(11) NOT NULL,
  UNIQUE KEY `email_UNIQUE` (`email`),
  PRIMARY KEY `costomer_id` (`customer_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `customer_address` (
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `customer_roadAddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `customer_zonecode` varchar(50) COLLATE utf8_bin NOT NULL,
  `customer_dtl_addr` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_priority` int(11) NOT NULL DEFAULT '0',
  KEY `customer_address_ibfk_1` (`customer_id`),
  CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `seller` (
  `seller_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `SNO` int(10) unsigned NOT NULL,
  `Sname` varchar(20) COLLATE utf8_bin NOT NULL,
  `customer_roadAddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `customer_zonecode` varchar(50) COLLATE utf8_bin NOT NULL,
  `customer_dtl_addr` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
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
  `product_stock` int(11) NOT NULL,
  `product_expiration_date` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_handling` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_material` varchar(1000) COLLATE utf8_bin NOT NULL,
  `product_review_score` int(11) NOT NULL DEFAULT '0',
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
  `review_content` varchar(2000) COLLATE utf8_bin NOT NULL,
  `review_img` varchar(45) COLLATE utf8_bin,
  `review_score` float NOT NULL,
  `review_date` date NOT NULL,
  PRIMARY KEY (`review_idx`),
  KEY `rv_pdnum_fk` (`product_num`),
  CONSTRAINT `rv_pdnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE basket(
   basket_idx int(11) PRIMARY KEY,
   customer_id varchar(15) COLLATE utf8_bin NOT NULL,
   product_num int(11) NOT NULL,
   product_name varchar(45) COLLATE utf8_bin NOT NULL,
   product_price int(11) NOT NULL,
   product_qty INT NOT NULL DEFAULT 1,
   product_discount int(11) NOT NULL DEFAULT '0',
   product_img varchar(45) COLLATE utf8_bin NOT NULL,
   Sname VARCHAR(45) COLLATE utf8_bin NOT NULL,
   CONSTRAINT bask_id_fk FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
   CONSTRAINT bask_pdnum_fk FOREIGN KEY (product_num) REFERENCES product(product_num)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `order` (
  `order_num` int(11) NOT NULL,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `order_roadAddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `order_zonecode` varchar(50) COLLATE utf8_bin NOT NULL,
  `order_dtl_addr` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `order_price` int(11) NOT NULL,
  `bank_name` varchar(10) COLLATE utf8_bin NOT NULL,
  `card_num` varchar(20) COLLATE utf8_bin NOT NULL,
  `card_validity` varchar(5) COLLATE utf8_bin NOT NULL,
  `card_cvc` int(11) NOT NULL,
  `order_check` int(11) NOT NULL,
  PRIMARY KEY (`order_num`),
  KEY `customer_id_order_fk` (`customer_id`),
  CONSTRAINT `customer_id_order_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `order_product` (
  `order_num` int(11) NOT NULL,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `product_num` int(11) NOT NULL,
  `product_stock` int(11) NOT NULL,
  KEY `order_num_product_num_fk_idx` (`order_num`),
  CONSTRAINT `order_num_product_num_fk` FOREIGN KEY (`order_num`) REFERENCES `order` (`order_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `qna` (
  `qna_idx` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `product_num` int(11) NOT NULL,
  `qna_subject` varchar(50) COLLATE utf8_bin NOT NULL,
  `qna_password` varchar(20) COLLATE utf8_bin NOT NULL,
  `qna_content` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`qna_idx`),
  KEY `qna_cus_cus_id_fk` (`customer_id`),
  KEY `qna_pro_pro_num_fk` (`product_num`),
  CONSTRAINT `qna_cus_cus_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `qna_pro_pro_num_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `qna_reply` (
  `qna_idx` int(11) NOT NULL,
  `seller_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `qna_reply_content_varchar` varchar(500) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `qna_re_sel_id_fk` (`seller_id`),
  KEY `qna_re_qna_idx_fk` (`qna_idx`),
  CONSTRAINT `qna_re_qna_idx_fk` FOREIGN KEY (`qna_idx`) REFERENCES `qna` (`qna_idx`),
  CONSTRAINT `qna_re_sel_id_fk` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
