  `order_num` int(11) NOT NULL,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `shipping_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `shipping_phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `shipping_zonecode` varchar(50) COLLATE utf8_bin NOT NULL,
  `shipping_address` varchar(50) COLLATE utf8_bin NOT NULL,
  `shipping_memo` varchar(1000) COLLATE utf8_bin,  
  `order_price` int(11) NOT NULL,
  `pay_method` varchar(50) COLLATE utf8_bin NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(45) COLLATE utf8_bin NOT NULL,
  `trans_num` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`order_num`),
  KEY `customer_id_order_fk` (`customer_id`),
  CONSTRAINT `customer_id_order_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `order_product` (
  `order_num` int(11) NOT NULL,
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `product_num` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_check` int(11) NOT NULL DEFAULT '0',
  KEY `order_num_product_num_fk_idx` (`order_num`),
  CONSTRAINT `order_num_product_num_fk` FOREIGN KEY (`order_num`) REFERENCES `order_list` (`order_num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `review` (
  `review_idx` int(11) NOT NULL AUTO_INCREMENT,
  `product_num` int(11) NOT NULL,
  `review_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_content` varchar(255) COLLATE utf8_bin NOT NULL,
  `review_img` varchar(45) COLLATE utf8_bin NOT NULL,
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


