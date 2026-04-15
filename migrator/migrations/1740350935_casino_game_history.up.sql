CREATE TABLE IF NOT EXISTS casino_game_history (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  game_type VARCHAR(32) NOT NULL,
  bet_amount INT NOT NULL,
  multiplier DECIMAL(6,2) NOT NULL DEFAULT 0,
  payout INT NOT NULL DEFAULT 0,
  result_data JSON,
  played_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_user_id (user_id),
  INDEX idx_played_at (played_at)
);
