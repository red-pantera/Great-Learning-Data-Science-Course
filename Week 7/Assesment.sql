-- --------------------------------------------------------
-- Part 1
-- Datasets Used: newOrders.sql
-- --------------------------------------------------------
use orders;

-- Q1. Write a query to display carton id, (len*width*height) as carton_vol and identify the optimum carton (carton with the least volume whose volume is greater than the total volume of all items (len * width * height * product_quantity)) for a given order whose orderid is 10006, Assume all items of an order are packed into one single carton (box). (1 ROW)
SELECT  CARTON_ID, (LEN * WIDTH * HEIGHT) AS CARTON_VOL 
FROM CARTON
WHERE (LEN * WIDTH * HEIGHT) > (SELECT SUM(P.LEN * P.WIDTH * P.HEIGHT * OI.PRODUCT_QUANTITY) AS TOTAL_VOLUME
				 FROM ORDER_ITEMS OI INNER JOIN PRODUCT P ON OI.PRODUCT_ID=P.PRODUCT_ID
				 WHERE OI.ORDER_ID=10006)
ORDER BY CARTON_VOL ASC
LIMIT 1;

-- order by asc will sort all volumes in ascending order and limit 1 will extract the optimum carton with the least volume 
-- Carton with id 40 and volume 121 500 000 is a perfect fit for order with id 10006.
 
 
-- Q2.Write a query to display details (customer id,customer fullname,order id,product quantity) of customers who bought more than ten (i.e. total order qty) products per shipped order.
SELECT 
    OC.CUSTOMER_ID,
    CONCAT(OC.CUSTOMER_FNAME, ' ',OC.CUSTOMER_LNAME) AS FULL_NAME,
    OH.ORDER_ID,
    SUM(OI.PRODUCT_QUANTITY) AS Product_Quantity
FROM
    ONLINE_CUSTOMER OC INNER JOIN ORDER_HEADER OH ON OC.CUSTOMER_ID = OH.CUSTOMER_ID
    INNER JOIN ORDER_ITEMS OI ON OH.ORDER_ID = OI.ORDER_ID
WHERE OH.ORDER_STATUS = 'Shipped'
GROUP BY OC.CUSTOMER_ID , OH.ORDER_ID, full_name
HAVING Product_Quantity > 10;

-- There are 11 orders with more than ten products per shipped order.
-- Anita Goswami (customer_id = 6) has made 3 orders and Jackson Davis(customer_id = 2) has made 2 orders, with total number of products higher than 10
-- Thus, there is only 8 unique customers.


-- Q3. Write a query to display the order_id, customer id and cutomer full name of customers along with (product_quantity) as total quantity of products shipped for order ids > 10060.
SELECT 
    OH.ORDER_ID,
    OC.CUSTOMER_ID,
    CONCAT(OC.CUSTOMER_FNAME, ' ',OC.CUSTOMER_LNAME) AS FULL_NAME,    
    SUM(OI.PRODUCT_QUANTITY) AS Product_Quantity
FROM
    ONLINE_CUSTOMER OC INNER JOIN ORDER_HEADER OH ON OC.CUSTOMER_ID = OH.CUSTOMER_ID
    INNER JOIN ORDER_ITEMS OI ON OH.ORDER_ID = OI.ORDER_ID
WHERE OH.ORDER_STATUS = 'Shipped'
GROUP BY OC.CUSTOMER_ID , OH.ORDER_ID, full_name
HAVING OH.ORDER_ID > 10060;

-- There are 6 customers whose order id is greater than 10060, and the total quantity of products is between 1 to 8.


-- Q4.Write a query to display product class description ,total quantity (sum(product_quantity),Total value (product_quantity * product price) and show which class of products have been shipped highest(Quantity) to countries outside India other than USA? Also show the total value of those items.
SELECT 
    PC.PRODUCT_CLASS_DESC,
    SUM(OI.PRODUCT_QUANTITY) AS Total_Quantity,
    SUM(OI.PRODUCT_QUANTITY * P.PRODUCT_PRICE) AS Total_Value    
FROM
    ORDER_ITEMS OI INNER JOIN ORDER_HEADER OH ON OH.ORDER_ID = OI.ORDER_ID
    INNER JOIN ONLINE_CUSTOMER OC ON OC.CUSTOMER_ID = OH.CUSTOMER_ID 
    INNER JOIN PRODUCT P ON P.PRODUCT_ID = OI.PRODUCT_ID
    INNER JOIN PRODUCT_CLASS PC ON PC.PRODUCT_CLASS_CODE = P.PRODUCT_CLASS_CODE
    INNER JOIN ADDRESS A ON A.ADDRESS_ID = OC.ADDRESS_ID
WHERE A.COUNTRY NOT IN ('India', 'USA') AND OH.ORDER_STATUS='Shipped'
GROUP BY PC.PRODUCT_CLASS_DESC
ORDER BY Total_Quantity DESC
LIMIT 1;

-- The product class of 'Stationary' has been shipped the highest number of products to countries outside India other than USA
-- order by desc will sort all classes in descending order to total value and limit 1 will extract the category with the highest total number of shipped products
 

-- --------------------------------------------------------
-- Part 2
-- Datasets Used: fastkart.sql
-- --------------------------------------------------------
use fastkart;

-- Q5. Write a query to display ProductId, ProductName, CategoryName, Old_Price(price) and New_Price as per the following criteria
-- a. If the category is “Motors”, decrease the price by 3000
-- b. If the category is “Electronics”, increase the price by 50
-- c. If the category is “Fashion”, increase the price by 150

SELECT P.ProductId, P.ProductName, C.CategoryName, P.Price as OldPrice,
    CASE when C.CategoryName = 'Motors' then P.Price-3000
    when C.CategoryName = 'Electronics' then P.Price+50
    when C.CategoryName = 'Fashion' then P.Price+150
    ELSE P.Price
    END AS NewPrice
FROM Products P INNER JOIN Categories C ON P.CategoryId=C.CategoryId;

-- The CASE statement goes through conditions and returns a value when the first condition is met. So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns old price.


-- Q6. Display the percentage of females present among all Users. (Round up to 2 decimal places) Add “%” sign while displaying the percentage.
SELECT CONCAT(ROUND(COUNT(Gender) / (SELECT COUNT(Gender) FROM Users) * 100, 2), '%') AS Female
FROM Users
WHERE Gender = 'F';

-- The percentage of females in users is about 47,06%, so the ration of female to male is almost equal. 


-- Q7.Display the average balance for both card types for those records only where CVVNumber > 333 and NameOnCard ends with the alphabet “e”
SELECT CardType, AVG(Balance) as AverageBalance
FROM CardDetails
WHERE CVVNumber > 333 AND NameOnCard LIKE '%e'
GROUP BY CardType;

# According to the case where the CVV number > 333 and card name ends with e, the average balance on card type M is higher than the card type V more than 3000 units.

-- Q8. What is the 2nd most valuable item available which does not belong to the “Motor” category. Value of an item = Price * QuantityAvailable. Display ProductName, CategoryName, value.

SELECT ProductName, CategoryName, (Price * QuantityAvailable) AS ValueP
FROM Products P INNER JOIN Categories C ON P.CategoryId=C.CategoryId
WHERE CategoryName != 'Motors'
ORDER BY ValueP DESC
LIMIT 1,1;

-- The 2nd most valuable item avaliable which does not belong to the 'Motors' category is Apple Macbook Pro with price of 5680000.




