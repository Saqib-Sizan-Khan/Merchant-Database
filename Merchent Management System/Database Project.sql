DROP DATABASE Merchent Management
CREATE DATABASE Merchent Management

CREATE TABLE Merchant_details( 
Merchant_name		VARCHAR(25),
Merchant_id			CHAR(2),
Contruct_age_months	int(3),
Total_deals			int(4),
Rating				int(2),
PRIMARY KEY(Merchant_id)
)

CREATE TABLE Product_details( 
Product_name	VARCHAR(25),
Product_id		CHAR(6),
Amount			int(4),
Weight_kg		int(4),
PRIMARY KEY (Product_id)
)

DROP TABLE Employee;

CREATE TABLE Employee( 
Employee_name	VARCHAR(25),
Employee_id		CHAR(2),
Product_id		CHAR(6),
Order_status	CHAR(1),
PRIMARY KEY (Employee_id),
FOREIGN KEY (Product_id) REFERENCES Product_details(Product_id) ON DELETE SET NULL
)

INSERT INTO Employee
VALUES ('Maidul Islam', '11', '128131', '6'),
('Saqib Sizan Khan', '21', '316211', '3'),
('Amimul Ehsan', '41', '612351', '2'),
('Sabbir Chowdhury', '51', '434272', '4'),
('Imran Nazir Emon', '61', '731181', '5');

CREATE TABLE Payment_info(
Merchant_id		CHAR(2),
Payment_charge	int(4),
FOREIGN KEY (Merchant_id) REFERENCES Merchant_details(Merchant_id) ON DELETE SET NULL
)


INSERT INTO Payment_info
VALUES('11',15000),('12',25000),('13',31000),
('21',13000),('22',25000),('23',27000),
('31',33000),('32',37000),('33',41000),
('41',46000),('42',52000),('43',64000),
('51',21000),('52',24000),('53',30000),
('61',70000),('62',55000),('63',66000),
('71',48000),('72',34000),('73',39000)










