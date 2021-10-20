CREATE TABLE product (
   product_num INT,
   product_name VARCHAR(45),
   product_category VARCHAR(45) NOT NULL,
   product_price INT NOT NULL,
   product_weight INT NOT NULL,
   product_discount INT NOT NULL DEFAULT '0',
   product_count INT NOT NULL DEFAULT '0',
   product_date DATE NOT NULL,
   CONSTRAINT pd_pnum_pname_pk PRIMARY KEY (product_num, product_name)
);

CREATE TABLE product_detail (
   product_detail_num INT PRIMARY KEY NOT NULL auto_increment,
   product_num INT NOT NULL,
   product_detail_img VARCHAR(45) NOT NULL,
   product_detail_stock INT NOT NULL,
   product_name VARCHAR(45) NOT NULL,
   product_location VARCHAR(255) NOT NULL,
   product_expiration_date VARCHAR(45) NOT NULL,
   product_handling VARCHAR(45) NOT NULL,
   product_material VARCHAR(1000) NOT NULL,
   CONSTRAINT pdt_pnum_pname_fk FOREIGN KEY (product_num, product_name) REFERENCES product (product_num, product_name)
);


CREATE TABLE review(
   review_idx INT PRIMARY KEY auto_increment,
   product_detail_num INT NOT NULL,
   review_id VARCHAR(45) NOT NULL,
     review_subject VARCHAR(45) NOT NULL,
   review_content VARCHAR(255) NOT NULL,
   review_img VARCHAR(45) NOT NULL,
   review_score FLOAT NOT NULL,
   review_date DATE NOT NULL,
   CONSTRAINT rv_pdnum_fk FOREIGN KEY (product_detail_num) REFERENCES product_detail(product_detail_num)
);


CREATE TABLE basket(
   member_id varchar(45) NOT NULL,
   basket_count INT PRIMARY KEY,
   product_detail_num INT NOT NULL,
   CONSTRAINT bask_id_fk FOREIGN KEY (member_id) REFERENCES member(id),
   CONSTRAINT bask_pdnum_fk FOREIGN KEY (product_detail_num) REFERENCES product_detail(product_detail_num)
);