CREATE TABLE IF NOT EXISTS `casino_loans` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `principal` INT NOT NULL,
  `remaining` INT NOT NULL,
  `interest_rate` DECIMAL(5,2) NOT NULL DEFAULT 0.10,
  `daily_payment` INT NOT NULL,
  `taken_at` INT NOT NULL,
  `last_payment_at` INT NOT NULL,
  `paid_off` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_user_active` (`user_id`, `paid_off`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
