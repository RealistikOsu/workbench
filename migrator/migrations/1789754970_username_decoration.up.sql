-- Stores the CSS class key a user has chosen from the fixed, developer-
-- defined decoration catalogue (core/decorations.go in the frontend repo).
-- NULL means no decoration.
ALTER TABLE users ADD COLUMN name_decoration VARCHAR(32) NULL DEFAULT NULL;
