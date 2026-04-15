CREATE TABLE IF NOT EXISTS casino_shop_purchases (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  item_id INT NOT NULL,
  price_paid INT NOT NULL,
  metadata JSON,
  purchased_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_user_id (user_id),
  INDEX idx_item_id (item_id)
);
