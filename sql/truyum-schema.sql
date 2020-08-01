CREATE DATABASE IF NOT EXISTS truyum;
USE truyum;

CREATE TABLE IF NOT EXISTS user(
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(20),
  PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS menu_item (
  menu_id INT NOT NULL AUTO_INCREMENT,
  menu_name VARCHAR(20),
  menu_price DECIMAL(6,2),
  menu_active VARCHAR(3),
  menu_date_of_launch DATE,
  menu_category VARCHAR(20),
  menu_free_delivery VARCHAR(3),
  PRIMARY KEY (menu_id)
);

CREATE TABLE IF NOT EXISTS cart(
  cart_id INT NOT NULL AUTO_INCREMENT,
  cart_user_id INT NULL,
  cart_menu_item_id INT NULL,
  PRIMARY KEY (cart_id),
  INDEX cart_user_fk_index (cart_user_id),
  INDEX cart_menu_item_fk_index (cart_menu_item_id),
  CONSTRAINT cart_user_fk FOREIGN KEY(cart_user_id)
    REFERENCES truyum.user(user_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT cart_menu_item_fk FOREIGN KEY(cart_menu_item_id)
    REFERENCES truyum.menu_item(menu_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
);

