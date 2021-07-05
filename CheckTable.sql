CREATE TABLE Customer (
Customer_id VARCHAR2(20)CONSTRAINT Customer_pk PRIMARY KEY,
Customer_Name VARCHAR2(20)CONSTRAINT Customer_Name NOT NULL,
Customer_Tel NUMBER,
);

CREATE TABLE Product (
Product_id VARCHAR2(20)CONSTRAINT Product_pk PRIMARY KEY,
Product_Name VARCHAR2(20)CONSTRAINT Product_Name NOT NULL,
Price NUMBER CONSTRAINT Price CHECK (Price > 0), 
);

CREATE TABLE Orders (
CONSTRAINT FK_CustumerOrders FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
CONSTRAINT FK_ProductOrders FOREIGN KEY (Product_id) REFERENCES Product (Product_id),
Quantity NUMBER ,
Total_amount NUMBER ,
);

ALTER TABLE Product ADD Category VARCHAR2(20),
ALTER TABLE Orders ADD Order_Date DATE DEFAULT SYSDATE();