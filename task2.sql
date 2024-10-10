-- Add referral id to user table, it will be the user id of the user that referred the new user.

-- Add referral id to user table 
ALTER TABLE `users`
    ADD COLUMN referral_id INT NULL;

-- Make referral_id a foreign key to users.id
ALTER TABLE `users`
    ADD CONSTRAINT `fk_referral_id`
    FOREIGN KEY (`referral_id`)
    REFERENCES `users`(`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE;

