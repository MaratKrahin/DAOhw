SELECT PRODUCT_NAME
FROM ORDERS
         JOIN CUSTOMERS
              ON orders.customer_id = customers.id
WHERE upper(customers.name) = upper(:CUSTOMERNAME);