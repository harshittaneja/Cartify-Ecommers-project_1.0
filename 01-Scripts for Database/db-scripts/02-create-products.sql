-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('BOOKS');
INSERT INTO product_category(category_name) VALUES ('Coffee Mugs');
INSERT INTO product_category(category_name) VALUES ('Mouse Pads');
INSERT INTO product_category(category_name) VALUES ('Luggage Tags');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'JavaScript - The Fun Parts', 'Learn JavaScript','assets/images/products/books/book-luv2code-1000.png',1,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1001', 'Spring Framework Tutorial', 'Learn Spring','assets/images/products/books/book-luv2code-1001.png',1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1002', 'Kubernetes - Deploying Containers', 'Learn Kubernetes','assets/images/products/books/book-luv2code-1002.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1003', 'Internet of Things (IoT) - Getting Started', 'Learn IoT','assets/images/products/books/book-luv2code-1003.png',1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1004', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1004.png',1,100,24.99,1, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1024', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1005.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1005', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1006.png',1,100,24.99,1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1006', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1007.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1007', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1008.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1008', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1009.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1009', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1010.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1010', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1011.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1011', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1012.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1012', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1013.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1013', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1014.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1014', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1015.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1015', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1016.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1016', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1017.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1017', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1018.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1018', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1019.png',1,100,24.99,1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1019', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1020.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1020', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1021.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1021', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1022.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1022', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1023.png',1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1023', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/books/book-luv2code-1024.png',1,100,24.99,1, NOW());










INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1000', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1000.png',1,100,24.99,2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1001', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1001.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1002', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1002.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1003', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1003.png',1,100,24.99,2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1004', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1004.png',1,100,24.99,2, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1003', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1003.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1004', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1004.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1005', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1005.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1006', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1006.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1007', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1007.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1008', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1008.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1009', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1009.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1010', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1010.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1011', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1011.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1012', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1012.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1012', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1012.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1012', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1012.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1013', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1013.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1014', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1014.png',1,100,24.99,2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1015', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1015.png',1,100,24.99,2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1016', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1016.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1017', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1017.png',1,100,24.99,2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1018', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1012.png',1,100,24.99,2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1019', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1019.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1020', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1020.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1021', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1021.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1022', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1022.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1023', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1023.png',1,100,24.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MUG-GLASS-1024', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/coffeemugs/coffeemug-luv2code-1024.png',1,100,24.99,2, NOW());









INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1000', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1000.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1001', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1001.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1002', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1002.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1003', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1003.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1004', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1004.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1005', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1005.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1006', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1006.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1007', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1007.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1008', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1008.png',1,100,24.99,3, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1009', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1009.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1010', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1010.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1011', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1011.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1012', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1012.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1013', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1013.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1014', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1014.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1015', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1015.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1016', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1016.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1017', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1017.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1018', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1018.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1019', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1019.png',1,100,24.99,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1020', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1020.png',1,100,24.99,3, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1021', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1021.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1022', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1022.png',1,100,24.99,3, NOW());



INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1023', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1023.png',1,100,24.99,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('LUAGGAGE _BAG-1024', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/luggagetags/luggagetag-luv2code-1024.png',1,100,24.99,3, NOW());




INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1000', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1000.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1001', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1001.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1002', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1002.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1003', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1003.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1004', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1004.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1005', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1005.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1006', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1006.png',1,100,24.99,4, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1007', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1007.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1008', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1008.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1009', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1009.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1010', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1010.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1011', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1011.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1012', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1012.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1013', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1013.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1014', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1014.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1015', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1015.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1016', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1016.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1017', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1017.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1018', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1018.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1019', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1019.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1020', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1020.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1021', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1021.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1022', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1022.png',1,100,24.99,4, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1023', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1023.png',1,100,24.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,unit_price, category_id, date_created)
VALUES ('MOUSE _PAD-1024', 'The Go Programming Language: A to Z', 'Learn Go','assets/images/products/mousepads/mousepad-luv2code-1024.png',1,100,24.99,4, NOW());
