CREATE TABLE `member` (
  `id` varchar(15) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(8) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `admin` (
  `admin_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL,
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `customer` (
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `recommend_id` int(11) NOT NULL DEFAULT '0',
  `personal_data` int(11) NOT NULL,
  `member_status` int(11) DEFAULT '0',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `eamil_UNIQUE` (`email`),
  KEY `costomer_id` (`customer_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `customer_address` (
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `customer_roadAddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `customer_zonecode` varchar(50) COLLATE utf8_bin NOT NULL,
  `customer_dtl_addr` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_priority` int(11) NOT NULL DEFAULT '0',
  KEY `customer_address_ibfk_1` (`customer_id`),
  CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `seller` (
  `seller_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `SNO` int(10) unsigned NOT NULL,
  `Sname` varchar(20) COLLATE utf8_bin NOT NULL,
  `seller_roadAddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `seller_zonecode` varchar(50) COLLATE utf8_bin NOT NULL,
  `seller_dtl_addr` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `status` int(11) DEFAULT '0',
  `member_status` int(11) DEFAULT '0',
  PRIMARY KEY (`seller_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `product` (
  `product_num` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `seller_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `product_category` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_weight` int(11) NOT NULL,
  `product_discount` int(11) NOT NULL DEFAULT '0',
  `product_date` date NOT NULL,
  `product_stock` int(11) NOT NULL DEFAULT '0',
  `product_expiration_date` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_handling` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_material` varchar(1000) COLLATE utf8_bin NOT NULL,
  `product_review_score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_num`),
  KEY `pr_se_fk` (`seller_id`),
  CONSTRAINT `pr_se_fk` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `product_img` (
  `product_num` int(11) DEFAULT NULL,
  `product_original_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_img_location` int(11) DEFAULT NULL,
  KEY `pdi_pnum_fk` (`product_num`),
  CONSTRAINT `pdi_pnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `basket` (
   basket_idx int(11) PRIMARY KEY,
   customer_id varchar(15) COLLATE utf8_bin NOT NULL,
   product_num int(11) NOT NULL,
   product_name varchar(45) COLLATE utf8_bin NOT NULL,
   product_price int(11) NOT NULL,
   product_qty INT NOT NULL DEFAULT 1,
   product_discount int(11) NOT NULL DEFAULT '0',
   product_img varchar(45) COLLATE utf8_bin NOT NULL,
   Sname VARCHAR(45) COLLATE utf8_bin NOT NULL,
  CONSTRAINT `bask_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bask_pdnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `order_list` (
  `order_num` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `shipping_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `shipping_phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `shipping_zonecode` varchar(50) COLLATE utf8_bin NOT NULL,
  `shipping_address` varchar(50) COLLATE utf8_bin NOT NULL,
  `shipping_memo` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `order_price` int(11) NOT NULL,
  `pay_method` varchar(50) COLLATE utf8_bin NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(45) COLLATE utf8_bin NOT NULL,
  `trans_num` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`order_num`),
  KEY `customer_id_order_fk` (`customer_id`),
  CONSTRAINT `customer_id_order_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `order_product` (
  `order_num` int(11) NOT NULL,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `product_num` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_check` int(11) NOT NULL DEFAULT '0',
  KEY `order_num_product_num_fk` (`order_num`),
  CONSTRAINT `order_num_product_num_fk` FOREIGN KEY (`order_num`) REFERENCES `order_list` (`order_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `review` (
  `review_idx` int(11) NOT NULL AUTO_INCREMENT,
  `product_num` int(11) NOT NULL,
  `review_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_content` varchar(255) COLLATE utf8_bin NOT NULL,
  `review_img` varchar(45) COLLATE utf8_bin,
  `review_score` float NOT NULL,
  `review_date` date NOT NULL,
  PRIMARY KEY (`review_idx`),
  KEY `rv_pdnum_fk` (`product_num`),
  CONSTRAINT `rv_pdnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `notice` (
  `notice_num` int(11) NOT NULL AUTO_INCREMENT,
  `notice_subject` varchar(50) NOT NULL,
  `notice_content` varchar(1000) NOT NULL DEFAULT ' ',
  `notice_date` date NOT NULL,
  PRIMARY KEY (`notice_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `qna` (
  `qna_idx` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `product_num` int(11) NOT NULL,
  `qna_subject` varchar(50) COLLATE utf8_bin NOT NULL,
  `qna_password` varchar(20) COLLATE utf8_bin NOT NULL,
  `qna_content` varchar(500) COLLATE utf8_bin NOT NULL,
  `qna_reply_content` varchar(5000) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`qna_idx`),
  KEY `qna_cus_cus_id_fk` (`customer_id`),
  KEY `qna_pro_pro_num_fk` (`product_num`),
  CONSTRAINT `qna_cus_cus_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `qna_pro_pro_num_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
