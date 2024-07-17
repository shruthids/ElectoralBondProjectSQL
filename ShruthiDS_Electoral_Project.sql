/***************************============ Electoral Bonds Database =========== *******************************************************************
 -- Database created by: Shruthi DS
 -- Database Name: electoralbonddata
 -- Author of Queries : Shruthi D S
 -- Organization : Careerpedia
 -- Description: This is a database which has electoral bonds data provided by Govenement of INDIA after Supreme Court Ruling. 
 -- Date : 02-April-2024
**********************************************************************************************************************************************************************************/

/*************************************************************************Tables and Data Description*****************************************************************************

The data was provided as 2 Tables and extra data regarding the bank branches has been extracted from GOVT website and the overall data is distributed in 4 tables. So that the 
whole data is in 3rd Normalization Form. 

 Tables in the database: 


The data base has 4 tables : `SHOW TABLES` 

+-------------------------------+
| Tables_in_electoralbonddata   |
+-------------------------------+
| bankdata                      |
| bonddata                      |
| donordata                     |
| receiverdata                  |
+-------------------------------+

#### Bonddata

+--------------+------------+------+-----+---------+-------+
| Field        | Type       | Null | Key | Default | Extra |
+--------------+------------+------+-----+---------+-------+
| Unique_key   | varchar(8) | NO   | PRI | NULL    |       |
| Denomination | int        | YES  |     | NULL    |       |
+--------------+------------+------+-----+---------+-------+


+------------+--------------+
| Unique_key | Denomination |
+------------+--------------+
| OC10000    |     10000000 |
| OC10001    |     10000000 |
| OC10002    |     10000000 |
| OC10003    |     10000000 |
| OC10004    |     10000000 |
+------------+--------------+


#### bankdata

+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| branchCodeNo | int          | NO   | PRI | NULL    |       |
| STATE        | varchar(50)  | YES  |     | NULL    |       |
| Address      | varchar(255) | YES  |     | NULL    |       |
| CITY         | varchar(30)  | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+

+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
| branchCodeNo | STATE                            | Address                                                                                                                     | CITY        |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
|            1 | West Bengal and Andaman& Nicobar | Kolkata Main Branch,Samriddhi Bhawan1, Strand Road, Kolkata, West Bengal,District :Kolkata. State: West Bengal.Pin : 700001 | Kolkata     |
|            2 | Tripura                          | Agartala BranchHari Ganga Basak Road,Agartala, District: Tripura (W), Tripura, Pin: 799001                                  | Agartala    |
|           41 | Odisha                           | Bhubaneswar Main BranchP.B.No.14, BhubaneswarBhubaneswar, Orissa. District : KhurdaState: Odisha, Pin : 751001              | Bhubaneswar |
|           78 | Assam                            | Guwahati Branch,Pan Bazar,MG Road, Kamrup, Guwahati.  Pin: 781001                                                           | Guwahati    |
|           92 | Manipur                          | lmphal BranchM G Avenue, lmphal west, Manipur, Pin: 795001                                                                  | Imphal      |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+


#### DonorData

+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Urn           | varchar(30)  | YES  |     | NULL    |       |
| JournalDate   | date         | YES  |     | NULL    |       |
| PurchaseDate  | date         | YES  |     | NULL    |       |
| ExpiryDate    | date         | YES  |     | NULL    |       |
| Purchaser     | varchar(255) | YES  |     | NULL    |       |
| PayBranchCode | int          | YES  | MUL | NULL    |       |
| PayTeller     | int          | YES  |     | NULL    |       |
| Unique_key    | varchar(8)   | NO   | PRI | NULL    |       |
+---------------+--------------+------+-----+---------+-------+

+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| Urn                     | JournalDate | PurchaseDate | ExpiryDate | Purchaser                         | PayBranchCode | PayTeller | Unique_key |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| 00847202204080000002387 | 2022-04-08  | 2022-04-08   | 2022-04-22 | KOYA AND COMPANY CONSTRUCTION LTD |           847 |   3898296 | OC10000    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10001    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10002    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10003    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10004    |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+


#### Receiverdata

+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| DateEncashment | date         | YES  |     | NULL    |       |
| PartyName      | varchar(255) | YES  |     | NULL    |       |
| AccountNum     | varchar(50)  | YES  |     | NULL    |       |
| PayBranchCode  | int          | YES  | MUL | NULL    |       |
| PayTeller      | int          | YES  |     | NULL    |       |
| Unique_key     | varchar(8)   | NO   | PRI | NULL    |       |
+----------------+--------------+------+-----+---------+-------+


+----------------+------------------------+-------------+---------------+-----------+------------+
| DateEncashment | PartyName              | AccountNum  | PayBranchCode | PayTeller | Unique_key |
+----------------+------------------------+-------------+---------------+-----------+------------+
| 2022-04-12     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   3898296 | OC10000    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10001    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10002    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10003    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10004    |
+----------------+------------------------+-------------+---------------+-----------+------------+

 *********************************************************************************************************************************************************************************/
use electoralbonddata;
show tables;
SELECT * FROM bankdata;
SELECT DISTINCT CITY FROM bankdata;
--  1. Find out how much donors spent on bonds
SELECT SUM(Denomination) AS DONORS_SPENT
FROM bonddata b
JOIN donordata d
ON b.Unique_key=d.Unique_key;

--  2. Find out total fund politicians got
SELECT SUM(Denomination) AS Receivers_fund
FROM receiverdata r
JOIN bonddata b
ON b.Unique_key=r.Unique_key;

--  3. Find out the total amount of unaccounted money received by parties

SELECT SUM(Denomination) AS unaccounted_amount
FROM bonddata
WHERE Unique_key IN (
    SELECT r.Unique_key
    FROM receiverdata r
    LEFT JOIN donordata d ON r.Unique_key = d.Unique_key
    WHERE d.Unique_key IS NULL
);

--  4.Find year wise how much money is spend on bonds?
SELECT YEAR(PurchaseDate) AS YEAR,SUM(b.Denomination) AS AMOUNT
FROM bonddata b
JOIN donordata d
ON d.Unique_key=b.Unique_key
GROUP BY YEAR(PurchaseDate)
ORDER BY YEAR;

-- 5. In which month most amount is spent on bonds
SELECT MONTHNAME(PurchaseDate) AS MONTH,SUM(b.Denomination) AS AMOUNT
FROM bonddata b
JOIN donordata d
ON d.Unique_key=b.Unique_key
GROUP BY MONTH
ORDER BY AMOUNT DESC
LIMIT 1;

--  6. Find out which company bought the highest number of bonds.
SELECT Purchaser,COUNT(Purchaser) AS NO_OF_BONDS
FROM donordata
GROUP BY Purchaser
ORDER BY NO_OF_BONDS DESC
LIMIT 1;

SELECT DISTINCT Denomination from bonddata;

-- 7. Find out which company spent the most on electoral bonds.

WITH sum_amount AS(SELECT d.Purchaser AS Purchaser,SUM(Denomination) AS Total_Amount
				   FROM donordata d
                   LEFT JOIN bonddata b
                   ON d.Unique_key=b.Unique_key
                   GROUP BY Purchaser
                   ORDER BY Total_Amount DESC),
max_amount AS (SELECT MAX(Total_Amount) AS maximum_amount
               FROM sum_amount)
SELECT s.Purchaser AS Purchaser, s.Total_Amount AS MAX_AMOUNT
FROM sum_amount s 
JOIN max_amount m ON s.Total_Amount = m.maximum_amount;

-- 8. List companies which paid the least to political parties.
                             
WITH TotalAmounts AS (
    SELECT d.Purchaser, SUM(b.Denomination) AS Total_Amount
    FROM donordata d
    LEFT JOIN bonddata b ON d.Unique_key = b.Unique_key
    GROUP BY d.Purchaser
),
MinAmount AS (
    SELECT MIN(Total_Amount) AS MIN_AMOUNT
    FROM TotalAmounts
)
SELECT t.Purchaser, t.Total_Amount AS MINIMUM_AMOUNT
FROM TotalAmounts t
JOIN MinAmount m ON t.Total_Amount = m.MIN_AMOUNT;


 -- 9. Which political party received the highest cash?
 SELECT r.PartyName AS PartyName, SUM(Denomination) AS AMOUNT
 FROM bonddata b
 JOIN receiverdata r
 ON r.Unique_key=b.Unique_key
 GROUP BY PartyName
 ORDER BY AMOUNT DESC
 LIMIT 1;
 
 -- 10. Which political party received the highest number of electoral bonds?
 SELECT PartyName,COUNT(DISTINCT Unique_key) no_of_bonds
 FROM receiverdata
 GROUP BY PartyName
 ORDER BY no_of_bonds DESC;
 
-- 11. Which political party received the least cash?
 SELECT r.PartyName AS PartyName, SUM(Denomination) AS AMOUNT
 FROM bonddata b
 JOIN receiverdata r
 ON r.Unique_key=b.Unique_key
 GROUP BY PartyName
 ORDER BY AMOUNT
 LIMIT 1;
 
-- 12. Which political party received the least number of electoral bonds?
SELECT PartyName,COUNT(DISTINCT Unique_key) no_of_bonds
FROM receiverdata
GROUP BY PartyName
ORDER BY no_of_bonds
LIMIT 1;

--  13. Find the 2nd highest donor in terms of amount he paid?
SELECT d.Purchaser AS Purchaser,SUM(Denomination) AS Total_Amount
FROM bonddata b
JOIN donordata d
ON d.Unique_key=b.Unique_key
GROUP BY Purchaser
ORDER BY Total_Amount DESC
LIMIT 1 OFFSET 1;

-- 14. Find the party which received the second highest donations?
WITH sum_amount AS (
   SELECT r.PartyName AS PartyName, SUM(Denomination) AS AMOUNT
   FROM bonddata b
   JOIN receiverdata r
   ON r.Unique_key=b.Unique_key
   GROUP BY PartyName
   ORDER BY AMOUNT DESC
 ),
 
 Ranked_Party AS (
    SELECT PartyName,AMOUNT,DENSE_RANK() OVER (ORDER BY AMOUNT DESC) AS count_rank
    FROM sum_amount)
 
 SELECT PartyName,AMOUNT
 FROM Ranked_Party
 WHERE count_rank=2;
 
-- 15. Find the party which received the second highest number of bonds?

WITH CountedParties AS (
    SELECT PartyName, COUNT(DISTINCT Unique_key) AS highest_count
    FROM receiverdata
    GROUP BY PartyName
),
RankedParties AS (
    SELECT PartyName, highest_count, DENSE_RANK() OVER (ORDER BY highest_count DESC) AS count_rank
    FROM CountedParties
)
SELECT PartyName, highest_count
FROM RankedParties
WHERE count_rank = 2;



-- 16. In which city were the most number of bonds purchased?
SELECT bk.City,COUNT(Unique_key) AS Number_of_bonds
FROM donordata d
JOIN bankdata bk
ON bk.branchCodeNo= d.PayBranchCode
GROUP BY City
HAVING COUNT(Unique_key)=(SELECT MAX(NO_OF_BONDS)
						  FROM (SELECT COUNT(d.Unique_key) AS NO_OF_BONDS
                                FROM donordata d
                                JOIN bankdata bk
                                ON bk.branchCodeNo= d.PayBranchCode
								GROUP BY City) AS COUNT_OF_BONDS
						 );

-- 17. In which city was the highest amount spent on electoral bonds?
WITH HIGHEST_AMOUNT AS(SELECT bk.City AS City,SUM(Denomination) AS total_amount
								 FROM bonddata b
                                 JOIN donordata d ON d.Unique_key = b.Unique_key
                                 JOIN bankdata bk ON bk.branchCodeNo = d.PayBranchCode
                                 GROUP BY City),
MAX_AMOUNT AS(SELECT MAX(total_amount) AS MAX_A FROM HIGHEST_AMOUNT)
SELECT 
    ha.City,
    ha.total_amount AS AMOUNT
FROM 
    HIGHEST_AMOUNT ha
JOIN 
    MAX_AMOUNT ma ON ha.total_amount = ma.MAX_A;


-- 18. In which city were the least number of bonds purchased?

SELECT bk.City,COUNT(Unique_key) AS Number_of_bonds
FROM donordata d
JOIN bankdata bk
ON bk.branchCodeNo= d.PayBranchCode
GROUP BY City
HAVING COUNT(Unique_key)=(SELECT MIN(NO_OF_BONDS)
						  FROM (SELECT COUNT(d.Unique_key) AS NO_OF_BONDS
                                FROM donordata d
                                JOIN bankdata bk
                                ON bk.branchCodeNo= d.PayBranchCode
								GROUP BY City) AS COUNT_OF_BONDS
						 );
--  19. In which city were the most number of bonds enchased?
SELECT bk.City,COUNT(Unique_key) AS Number_of_bonds
FROM receiverdata r
JOIN bankdata bk
ON bk.branchCodeNo= r.PayBranchCode
GROUP BY City
HAVING COUNT(Unique_key)=(SELECT MAX(NO_OF_BONDS)
						  FROM (SELECT COUNT(r.Unique_key) AS NO_OF_BONDS
                                FROM receiverdata r
                                JOIN bankdata bk
                                ON bk.branchCodeNo= r.PayBranchCode
								GROUP BY City) AS COUNT_OF_BONDS
						 );

-- 20. In which city were the least number of bonds enchased?
                 
SELECT bk.City,COUNT(Unique_key) AS Number_of_bonds
FROM receiverdata r
JOIN bankdata bk
ON bk.branchCodeNo= r.PayBranchCode
GROUP BY City
HAVING COUNT(Unique_key)=(SELECT MIN(NO_OF_BONDS)
						  FROM (SELECT COUNT(r.Unique_key) AS NO_OF_BONDS
                                FROM receiverdata r
                                JOIN bankdata bk
                                ON bk.branchCodeNo= r.PayBranchCode
								GROUP BY City) AS COUNT_OF_BONDS
						 );


--  21. List the branches where no electoral bonds were bought; if none, mention it as null.
SELECT branchCodeNo,State,City
FROM bankdata bk
LEFT JOIN donordata d
ON bk.branchCodeNo=d.PayBranchCode
WHERE d.Purchaser IS NULL;

SELECT branchCodeNo,State,City
FROM bankdata bk
LEFT JOIN receiverdata r
ON bk.branchCodeNo=r.PayBranchCode
WHERE r.PartyName IS NULL;

--  22. Break down how much money is spent on electoral bonds for each year.
-- considering PurchaseDate from donordata
SELECT YEAR(d.PurchaseDate) AS Year,SUM(b.Denomination) AS Amount
FROM donordata d 
LEFT JOIN bonddata b
ON  d.Unique_key=b.Unique_key
GROUP BY YEAR
ORDER BY amount desc;

/*23. Break down how much money is spent on electoral bonds for each year and provide the year and the amount. Provide values
 for the highest and least year and amount.*/
 -- Least amount --
SELECT YEAR(d.PurchaseDate) AS Year,SUM(b.Denomination) AS Least_Amount
FROM donordata d 
LEFT JOIN bonddata b
ON  d.Unique_key=b.Unique_key
GROUP BY YEAR
ORDER BY Least_Amount
LIMIT 1;

-- Highest Amount --




--  24. Find out how many donors bought the bonds but did not donate to any political party?

SELECT COUNT(Unique_key) AS NOT_DONATED
FROM donordata d
WHERE NOT EXISTS (
    SELECT 1
    FROM receiverdata r
    WHERE d.Unique_key= r.Unique_key);

SELECT r.Unique_key,r.PartyName
FROM receiverdata r  
LEFT JOIN donordata d
ON d.Unique_key=r.Unique_key
WHERE d.Unique_key IS NULL;

--  25. Find out the money that could have gone to the PM Office, assuming the above question assumption (Domain Knowledge)
WITH NOT_DONATED AS(SELECT Unique_key 
                    FROM donordata d
                    WHERE NOT EXISTS (
                                       SELECT 1
									   FROM receiverdata r
                                       WHERE d.Unique_key= r.Unique_key))
SELECT SUM(Denomination) AS PM_OFFICE
FROM bonddata b 
JOIN NOT_DONATED n 
ON b.Unique_key=n.Unique_key;

--  26. Find out how many bonds don't have donors associated with them.
SELECT count(*) AS NO_DONOR_DETAILS
FROM receiverdata r  
LEFT JOIN donordata d
ON d.Unique_key=r.Unique_key
WHERE d.Unique_key IS NULL;

/*27. Pay Teller is the employee ID who either created the bond or redeemed it. So find the employee ID who issued the highest
 number of bonds.*/
 -- considering employees who created bonds--
 SELECT PayTeller,COUNT(Unique_key) AS BONDS_CREATED
 FROM donordata d
 GROUP BY PayTeller
 ORDER BY BONDS_CREATED DESC
 LIMIT 1;

--  28. Find the employee ID who issued the least number of bonds --

 WITH bonds_count AS(
                      SELECT PayTeller,COUNT(d.Unique_key) AS BONDS_CREATED
					  FROM donordata d
					  GROUP BY PayTeller
                      ORDER BY BONDS_CREATED),
     min_bonds AS( SELECT MIN(BONDS_CREATED) AS m_bonds FROM bonds_count)

SELECT bc.PayTeller AS payteller,bc.bonds_created AS least_bonds
FROM  bonds_count bc
JOIN min_bonds mb
ON bc.bonds_created=mb.m_bonds;

--  29. Find the employee ID who assisted in redeeming or enchasing bonds the most --
SELECT PayTeller,COUNT(PayTeller) AS BONDS_ENCHASED
FROM receiverdata
GROUP BY PayTeller
ORDER BY BONDS_ENCHASED DESC
LIMIT 1;

--  30. Find the employee ID who assisted in redeeming or enchasing bonds the least --
WITH no_of_bonds AS (SELECT PayTeller,COUNT(PayTeller) AS BONDS_ENCHASED
FROM receiverdata
GROUP BY PayTeller
ORDER BY BONDS_ENCHASED),
min_bonds AS(SELECT MIN(BONDS_ENCHASED) AS BOND_ENCHASED1
             FROM no_of_bonds)
SELECT PayTeller,Bonds_Enchased
FROM no_of_bonds nb
JOIN min_bonds mb
ON nb.BONDS_ENCHASED=mb.BOND_ENCHASED1;

--  1. Tell me total how many bonds are created? --
SELECT COUNT(Unique_key) AS Total_Bonds_Created
FROM donordata;

--  2. Find the count of Unique Denominations provided by SBI? --

SELECT COUNT(DISTINCT Denomination) AS Unique_Denominations
FROM bonddata;

--  3. List all the unique denominations that are available?
SELECT DISTINCT(Denomination) AS Denominations
FROM bonddata
ORDER BY Denominations;

-- 4. Total money received by the bank for selling bonds --
SELECT SUM(Denomination) Total_Amount
FROM bonddata b 
JOIN donordata d 
ON b.Unique_key=d.Unique_key;

--  5. Find the count of bonds for each denominations that are created. --
SELECT Denomination,COUNT(Unique_Key) AS no_of_bonds
FROM bonddata
GROUP BY Denomination
ORDER BY Denomination DESC;

-- 6. Find the count and Amount or Valuation of electoral bonds for each denominations.

SELECT Denomination,COUNT(Denomination),SUM(Denomination) AS sum_of_Amount
FROM bonddata
GROUP BY Denomination
ORDER BY Denomination DESC;

-- 7. Number of unique bank branches where we can buy electoral bond?

SELECT COUNT(BranchCodeNo) AS no_of_branches
FROM bankdata;

-- 8. How many companies bought electoral bonds

SELECT COUNT(DISTINCT Purchaser) AS no_of_Purchaser
FROM donordata;


--  9. How many companies made political donations

SELECT COUNT(DISTINCT Purchaser) AS companies_donated
FROM donordata
WHERE Unique_key IN(SELECT Unique_key FROM receiverdata);

--  10. How many number of parties received donations
SELECT COUNT(DISTINCT PartyName) AS no_of_parties 
FROM receiverdata;

--  11. List all the political parties that received donations

SELECT DISTINCT PartyName AS no_of_parties 
FROM receiverdata;

-- 12. What is the average amount that each political party received

SELECT PartyName,AVG(Denomination) AS avg_amount
FROM receiverdata r
JOIN bonddata b 
ON r.Unique_key=b.Unique_key
GROUP BY PartyName
ORDER BY avg_amount DESC;

--  13. What is the average bond value produced by bank
SELECT AVG(Denomination) AS avg_bond_value
FROM bonddata b
JOIN donordata d 
ON  b.Unique_key=d.Unique_key;

--  14. List the political parties which have enchased bonds in different cities?

SELECT PartyName,COUNT(DISTINCT PayBranchCode) AS no_of_cities_enchased
FROM receiverdata 
GROUP BY PartyName
HAVING no_of_cities_enchased > 1 ;

/* 15. List the political parties which have enchased bonds in different cities and list the cities in which the bonds have enchased
 as well?*/
 
WITH diff_cities AS (SELECT PartyName,COUNT(DISTINCT PayBranchCode) AS no_of_cities_enchased
FROM receiverdata 
GROUP BY PartyName
HAVING no_of_cities_enchased > 1 ),

branch AS(select DISTINCT r.PartyName, PayBranchCode
from diff_cities dc
join receiverdata r
on dc.PartyName=r.PartyName)

SELECT PartyName,City
FROM branch b 
JOIN bankdata bk 
ON b.PayBranchCode=bk.branchCodeNo
ORDER BY PartyName;

-- Give the Count of each denomination per Political Party

SELECT Denomination,COUNT(Denomination)
FROM receiverdata r 
JOIN bonddata b 
ON r.Unique_key=b.Unique_key
WHERE r.PartyName="BHARATIYA JANATA PARTY"
GROUP BY Denomination;
