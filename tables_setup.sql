
-- Create a sequence for client number
CREATE SEQUENCE client_num
    START WITH 10001
    INCREMENT BY 1
    MINVALUE 10001
    CACHE 10;
    
--client table
CREATE TABLE client(
    Client_Number NUMBER(5) DEFAULT client_num.NEXTVAL,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Street_Address VARCHAR(100),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(50),
    Phone_Number VARCHAR(50),
    Email VARCHAR(50),
    PRIMARY KEY (Client_Number)
);

Drop SEQUENCE acc_num;
-- create a sequence for account number
CREATE SEQUENCE acc_num
    START WITH 1000001
    INCREMENT BY 1
    MINVALUE 1000001
    CACHE 5;
    

--account table
CREATE TABLE account(
    Account_Number NUMBER(7) DEFAULT acc_num.NEXTVAL,
    Balance NUMBER(10,2) DEFAULT 0.00,
    PRIMARY KEY (Account_Number)
);

--create an owns table
CREATE TABLE owns(
    Client_Number NUMBER(5),
    Account_Number NUMBER(7),
    PRIMARY KEY (Client_Number, Account_Number),
    FOREIGN KEY (Client_Number) REFERENCES client(Client_Number) ON DELETE CASCADE,
    FOREIGN KEY (Account_Number) REFERENCES account(Account_Number) ON DELETE CASCADE
);

--create a transaction type table
CREATE TABLE tx_type(
    Transaction_Type VARCHAR(1),
    type_description VARCHAR(50),
    PRIMARY KEY (Transaction_Type)
);


--create a sequence for transaction number
CREATE SEQUENCE tx_num
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    CACHE 10;


--create a transaction table
CREATE TABLE transaction(
    TxNbr NUMBER(10) DEFAULT tx_num.NEXTVAL,
    TxCode VARCHAR(1),
    AccountNbr NUMBER(7),
    Amount NUMBER(10,2),
    Transaction_Date DATE,
    RefNbr NUMBER(3),
    PRIMARY KEY (TxNbr),
    FOREIGN KEY (Account_Nbr) REFERENCES account(Account_Number) ON DELETE CASCADE,
    FOREIGN KEY (TxCode) REFERENCES tx_type(Transaction_Type) ON DELETE CASCADE
);

--branch number sequence
CREATE SEQUENCE branch_num
    START WITH 101
    INCREMENT BY 1
    MINVALUE 101
    CACHE 4;
--create a branch table
CREATE TABLE branch(
    Branch_Number NUMBER(3),
    Branch_Name VARCHAR(50),
    PRIMARY KEY (Branch_Number)
);
CREATE SEQUENCE merch_num
    START WITH 301
    INCREMENT BY 1
    MINVALUE 301
    CACHE 4;

--create a merchant table
CREATE TABLE merchant(
    Merchant_Number NUMBER(3),
    Merchant_Name VARCHAR(50),
    PRIMARY KEY (Merchant_Number)
);

--indexes
CREATE INDEX client_name ON client (Last_Name, First_Name);
CREATE INDEX balance ON account (Balance);
CREATE INDEX tx_date ON transaction (Transaction_Date);
CREATE INDEX merchant_name ON merchant (Merchant_Name);


