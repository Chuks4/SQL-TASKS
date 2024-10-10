-- Join the referral user to user, showing the user details of both users

SELECT ref.username AS referral, usr.username AS user
FROM users AS ref
LEFT JOIN users AS usr ON ref.id = usr.referral_id


CREATE VIEW `ref` AS
SELECT ref.username
FROM users AS ref

WHERE ((SELECT ref.username AS referral, 
      usr.username AS user
	  FROM users AS ref
	  LEFT JOIN users AS usr ON ref.id = usr.referral_id))


