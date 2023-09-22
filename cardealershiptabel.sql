CREATE TABLE Car (
car_id serial PRIMARY KEY,
make varchar(100),
model varchar (100),
color varchar (50),
price NUMERIC (10,2)
);

CREATE TABLE Salesperson (
salesperson_id serial PRIMARY KEY,
first_name varchar (100),
last_name varchar (100)
);

CREATE TABLE Customer(
customer_id serial PRIMARY KEY,
first_name varchar (100),
last_name varchar (100),
car_id integer NOT NULL,
FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

CREATE TABLE Invoice(
invoice_id serial PRIMARY KEY,
car_id integer NOT NULL,
customer_id integer NOT NULL,
salesperson_id integer NOT NULL,
FOREIGN KEY (car_id) REFERENCES Car (car_id),
FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
FOREIGN KEY (salesperson_id) REFERENCES Salesperson (salesperson_id)
);