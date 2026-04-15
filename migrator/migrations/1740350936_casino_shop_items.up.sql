CREATE TABLE IF NOT EXISTS casino_shop_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  type VARCHAR(64) NOT NULL,
  enabled BOOLEAN NOT NULL DEFAULT TRUE,
  metadata JSON,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO casino_shop_items (name, description, price, type, enabled) VALUES
('Username Change', 'Change your username once', 3000, 'username_change', TRUE),
('Custom Profile Badge', 'Unlock the ability to set a custom profile badge', 2000, 'custom_badge', TRUE),
('Score Wipe', 'Reset your scores and stats for a specific mode and mods', 5500, 'score_wipe', TRUE);
-- ('Profile Glow/Colour', 'Set a custom colour glow on your profile', 1000, 'profile_color', TRUE),
-- ('Custom Title', 'Set a custom title displayed on your profile', 1500, 'custom_title', TRUE);
