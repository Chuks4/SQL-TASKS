-- Create a view table for the SQL script

CREATE VIEW `ref` AS
SELECT ref.username AS referral, usr.username AS user
FROM users AS usr
LEFT JOIN users AS ref ON usr.id = ref.referral_id