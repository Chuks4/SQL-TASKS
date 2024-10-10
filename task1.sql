-- CREATE A JOIN SQL SCRIPT THAT RETURNS SUBSCRIPTION 
-- WITH THE USER DETAILS OF WHO MADE A PAYMENT
-- USING OUR users and subscription table as reference

SELECT sub.id, usr.*
FROM subscription AS sub
JOIN users AS usr ON sub.user_id = usr.id 