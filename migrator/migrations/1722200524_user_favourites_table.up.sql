CREATE TABLE `user_favourites` (
  `user_id` int NOT NULL,
  `beatmapset_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`beatmapset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
