-- Links a RealistikOsu account to the player's official osu! (ppy.sh)
-- account, purely for a "verified" display badge - no gating, no
-- multiaccount enforcement.

CREATE TABLE IF NOT EXISTS `osu_official_links` (
    `ppy_user_id`  BIGINT      NOT NULL,
    `ppy_username` VARCHAR(30) NOT NULL,
    `osu_user_id`  INT         NOT NULL,
    `created_at`   INT         NOT NULL DEFAULT 0,
    PRIMARY KEY (`ppy_user_id`),
    -- One osu! (ppy.sh) account may only be linked to one RealistikOsu
    -- account, and vice versa.
    UNIQUE KEY `uq_osu_official_links_osu_user` (`osu_user_id`),
    CONSTRAINT `fk_osu_official_links_user`
        FOREIGN KEY (`osu_user_id`) REFERENCES `users` (`id`)
        ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
