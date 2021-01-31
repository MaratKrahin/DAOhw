CREATE TABLE CUSTOMERS (
                           ID SERIAL PRIMARY KEY,
                           NAME VARCHAR(255),
                           SURNAME VARCHAR(255),
                           AGE INT CHECK (AGE >= 0),
                           PHONE_NUMBER VARCHAR(50) UNIQUE
);

CREATE TABLE ORDERS (
                        ID SERIAL PRIMARY KEY,
                        DATE DATE,
                        CUSTOMER_ID INT REFERENCES CUSTOMERS(ID),
                        PRODUCT_NAME VARCHAR(255),
                        AMOUNT INT CHECK (AMOUNT >= 0)
);
