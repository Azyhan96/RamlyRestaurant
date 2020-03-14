CREATE TABLE Customer (
[cust_id] INT IDENTITY (1, 1) NOT NULL,
[cust_name] VARCHAR (50) NULL,
[gender] VARCHAR (50) NULL,
[address] VARCHAR (50) NULL,
[telephone] VARCHAR (50) NULL,
[email] VARCHAR (50) NULL,
[passwordhash] VARCHAR (100) NULL,
[role] VARCHAR (10) NULL,
[enabled] BIT NULL,
PRIMARY KEY CLUSTERED ([cust_id] ASC)
);