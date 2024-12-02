CREATE TABLE commission_assignment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    commission VARCHAR(255) NOT NULL,
    reward INT NOT NULL,
    created_at DATE NOT NULL,
    completed BOOLEAN NOT NULL,

    -- Composite unique key for user_id, commission, and created_at
    UNIQUE KEY (user_id, commission, created_at),

    -- Index on (user_id, created_at)
    INDEX idx_user_created_at (user_id, created_at)
);
