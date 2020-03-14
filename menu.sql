CREATE TABLE Category (
[cat_id] INT IDENTITY (1, 1) NOT NULL,
[cat_name] VARCHAR (50) NULL,
[cat_desc] VARCHAR (500) NULL,
PRIMARY KEY CLUSTERED ([cat_id] ASC),
UNIQUE NONCLUSTERED ([cat_name] ASC)
);

CREATE TABLE Product (
[prod_id] INT IDENTITY (1, 1) NOT NULL,
[cat_id] INT NOT NULL,
[prod_name] VARCHAR (75) NULL,
[prod_price] FLOAT (53) NULL,
[prod_desc] VARCHAR (500) NULL,
[prod_image] VARCHAR (50) NULL,
[prod_promotion] BIT NULL,
PRIMARY KEY CLUSTERED ([prod_id] ASC)
);

INSERT INTO Category (cat_name, cat_desc)
VALUES ('Burger', 'Burger Ramly is the best burger in Malaysia');

INSERT INTO Category (cat_name, cat_desc)
VALUES ('Oblong', 'Famous long burger a Malaysian favourite');

INSERT INTO Category (cat_name, cat_desc)
VALUES ('Frankfurter', 'Delicious beef and chicken frankfurter');

INSERT INTO Category (cat_name, cat_desc)
VALUES ('Others', 'More Delicious food in RAMLY');

INSERT INTO Product
VALUES (1, 'Chicken Burger', 3.00, 'Chicken Burger Ramly tasty', 'BurgerAyam.png', 1);

INSERT INTO Product
VALUES (1, 'Chicken Cheese Burger', 5.00, 'Chicken Burger Ramly with cheese, Yummy', 'BurgerAyamCheese.png', 1);

INSERT INTO Product
VALUES (1, 'Double Chicken Burger', 6.00, 'Double Chicken Burger is great', 'BurgerAyamDouble.png', 1);

INSERT INTO Product
VALUES (1, 'Special Chicken Burger', 5.50, 'Special Chicken Burger Ramly LAZAT', 'BurgerAyamSpecial.png', 1);

INSERT INTO Product
VALUES (1, 'Double Beef Burger', 6.50, 'Double Beef Burger Ramly Tasty', 'BurgerDagingDouble.png', 1);

INSERT INTO Product
VALUES (1, 'Beef Burger', 5.50, 'Beef Burger Ramly', 'BurgerLembu.png', 1);

INSERT INTO Product
VALUES (1, 'Beef Cheese Burger', 7.00, 'BeefCheese Burger Ramly SEDAP', 'BurgerLembuCheese.png', 1);

INSERT INTO Product
VALUES (1, 'Special Beef Burger', 8.50, 'Special cheese burger with eggs and cheese', 'BurgerLembuSpecial.png', 1);

INSERT INTO Product
VALUES (1, 'Grilled Chicken Burger', 9.50, 'Chicken patty grilled with love' ,'BurgerAyamPanggang.png', 1);


INSERT INTO Product
VALUES (2, 'Chicken Oblong', 4.50, 'Long Chicken Buger Ramly', 'OblongAyam.png', 1);

INSERT INTO Product
VALUES (2, 'Beef Oblong', 5.50, 'Long Beef Buger Ramly', 'OblongDaging.png', 1);

INSERT INTO Product
VALUES (2, 'Lamb Oblong', 6.50, 'Long Lamb Burger juicy and tender', 'OblongKambing.png', 1);


INSERT INTO Product
VALUES (3, 'Frankfurter Ayam', 3.50, 'Chicken Frankfurter with ramly bread', 'FrankfurterAyam.png', 1);

INSERT INTO Product
VALUES (3, 'Frankfurter Daging', 4.00, 'Beef Frankfurter with ramly bread', 'FrankfurterDaging.png', 1);


INSERT INTO Product
VALUES (4, 'Chicken Nugget', 3.50, 'Chicken nugget crispy outside and tender inside', 'NuggetAyam.png', 1);

INSERT INTO Product
VALUES (4, 'Fried Chicken', 5.50, 'Ramly Fried Chicken better than any fried chicken ', 'AyamGoreng.png', 1);

