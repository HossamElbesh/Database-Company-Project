CREATE  DATABASE Company;

CREATE TABLE Company.customer (
  cus_id INT NOT NULL,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  address VARCHAR(50),
  add_id INT,
  PRIMARY KEY (cus_id)
);

INSERT INTO Company.customer() VALUES (8033, "Hossam", "Omar", "Wall Street", 1244);
ALTER TABLE Company.customer ADD COLUMN phone INT NOT NULL;
UPDATE Company.customer SET first_name = 'Elbesh' WHERE cus_id = 1214;

CREATE TABLE Company.category (
  cat_id INT NOT NULL,
  name VARCHAR(45),
  PRIMARY KEY (cat_id)
);

INSERT INTO Company.category VALUES (2579, "Hossam");
ALTER TABLE Company.category ADD COLUMN color VARCHAR(10) NOT NULL;
UPDATE Company.category SET name = 'Games' WHERE cat_id = 3324;

CREATE TABLE Company.department (
  dep_id INT NOT NULL,
  name VARCHAR(45),
  PRIMARY KEY (dep_id)
);

INSERT INTO Company.department VALUES (363, "Food");
ALTER TABLE Company.department ADD COLUMN capacity INT NOT NULL;
UPDATE Company.department SET name = 'furniture' WHERE dep_id = 4754;

CREATE TABLE Company.role (
  rol_id INT NOT NULL,
  name VARCHAR(45),
  PRIMARY KEY (rol_id)
);

INSERT INTO Company.role VALUES(1, 'Software engineer');
INSERT INTO Company.role VALUES(2, 'Hardware engineer');
INSERT INTO Company.role VALUES(3, 'Software embeded engineer');

DELETE FROM role WHERE rol_id = 1;

CREATE TABLE Company.employee (
  emp_id INT NOT NULL,
  name VARCHAR(45),
  age VARCHAR(45),
  salary INT,
  joined_in DATE,
  address VARCHAR(50),
  add_id INT,
  dep_id INT,
  rol_id INT,
  PRIMARY KEY (emp_id),
  FOREIGN KEY (dep_id) REFERENCES department(dep_id),
  FOREIGN KEY (rol_id) REFERENCES role(rol_id)
);

INSERT INTO Company.employee VALUES(1,'Omar Sharaf',18,100000,'2020-12-20','Egypt',1,2);
INSERT INTO Company.employee VALUES(2,'Hossam Albesh',20,102000,'2018-12-20','Egypt',1,3);

CREATE TABLE Company.order (
  ord_id INT NOT NULL,
  customer_id INT,
  to_street VARCHAR(45),
  to_city VARCHAR(45),
  ship_data DATE,
  product_id INT,
  PRIMARY KEY (ord_id),
  FOREIGN KEY (customer_id) REFERENCES customer(cus_id)
);

INSERT INTO Company.order VALUES(1,2,"Seventy Street","Dumyat","2022-12-22");

CREATE TABLE Company.product (
  pro_id INT NOT NULL,
  name VARCHAR(45),
  quantity INT,
  price INT,
  thumbnail VARCHAR(45),
  cat_id INT,
  PRIMARY KEY (pro_id),
  FOREIGN KEY (cat_id) REFERENCES category(cat_id)
);

CREATE TABLE Company.project (
  proj_id INT NOT NULL,
  name VARCHAR(45),
  deadline DATE,
  PRIMARY KEY (proj_id)
);

CREATE TABLE Company.project_employee (
  emp_id INT,
  proj_id INT,
  FOREIGN KEY (proj_id) REFERENCES project(proj_id),
  FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

CREATE TABLE Company.product_order (
  pro_id INT,
  ord_id INT,
  FOREIGN KEY (pro_id) REFERENCES product(pro_id),
  FOREIGN KEY (ord_id) REFERENCES order(ord_id)
);
