-- rosu-twitch schema.
--
-- Lives in the same database as bancho so that the link between a Twitch account and a
-- RealistikOsu account can be read by the website, the bot, and anything else that needs
-- it, without a second datastore.

CREATE TABLE IF NOT EXISTS `twitch_links` (
    `twitch_id`       BIGINT      NOT NULL,
    `twitch_username` VARCHAR(50) NOT NULL,
    `osu_user_id`     INT         NOT NULL,
    `created_at`      INT         NOT NULL DEFAULT 0,
    PRIMARY KEY (`twitch_id`),
    -- One osu! account may only be linked to one Twitch account, and vice versa.
    UNIQUE KEY `uq_twitch_links_osu_user` (`osu_user_id`),
    UNIQUE KEY `uq_twitch_links_username` (`twitch_username`),
    CONSTRAINT `fk_twitch_links_user`
        FOREIGN KEY (`osu_user_id`) REFERENCES `users` (`id`)
        ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE IF NOT EXISTS `twitch_settings` (
    `twitch_id`    BIGINT       NOT NULL,
    `enabled`      TINYINT(1)   NOT NULL DEFAULT 1,
    `echo`         TINYINT(1)   NOT NULL DEFAULT 1,
    `sub_only`     TINYINT(1)   NOT NULL DEFAULT 0,
    `points_only`  TINYINT(1)   NOT NULL DEFAULT 0,
    `cooldown`     INT          NOT NULL DEFAULT 30,
    -- Star rating window. -1 on either bound disables the filter.
    `sr_min`       FLOAT        NOT NULL DEFAULT 0,
    `sr_max`       FLOAT        NOT NULL DEFAULT -1,
    PRIMARY KEY (`twitch_id`),
    CONSTRAINT `fk_twitch_settings_link`
        FOREIGN KEY (`twitch_id`) REFERENCES `twitch_links` (`twitch_id`)
        ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE IF NOT EXISTS `twitch_excluded_users` (
    `twitch_id`         BIGINT      NOT NULL,
    `excluded_username` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`twitch_id`, `excluded_username`),
    CONSTRAINT `fk_twitch_excluded_link`
        FOREIGN KEY (`twitch_id`) REFERENCES `twitch_links` (`twitch_id`)
        ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


CREATE TABLE IF NOT EXISTS `twitch_requests` (
    `id`                 BIGINT      NOT NULL AUTO_INCREMENT,
    `twitch_id`          BIGINT      NOT NULL,
    `requester_username` VARCHAR(50) NOT NULL,
    `beatmap_id`         INT         NOT NULL,
    `mods`               VARCHAR(32) NOT NULL DEFAULT '',
    `created_at`         INT         NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    KEY `idx_twitch_requests_channel` (`twitch_id`, `created_at`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
