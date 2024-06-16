SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `rosu`
--

-- --------------------------------------------------------

--
-- Table structure for table `2fa_totp`
--

CREATE TABLE `2fa_totp` (
  `userid` int(11) NOT NULL,
  `enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `icon` text CHARACTER SET latin1 NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `anticheat`
--

CREATE TABLE `anticheat` (
  `dcid` bigint(20) NOT NULL,
  `api` varchar(255) NOT NULL,
  `allowed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ap_stats`
--

CREATE TABLE `ap_stats` (
  `id` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username_aka` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `favourite_mode` int(11) NOT NULL DEFAULT '0',
  `level_std` int(11) NOT NULL DEFAULT '1',
  `level_taiko` int(11) NOT NULL DEFAULT '1',
  `level_mania` int(11) NOT NULL DEFAULT '1',
  `level_ctb` int(11) NOT NULL DEFAULT '1',
  `total_score_std` int(11) NOT NULL DEFAULT '0',
  `total_score_taiko` int(11) NOT NULL DEFAULT '0',
  `total_score_mania` int(11) NOT NULL DEFAULT '0',
  `total_score_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_std` int(11) NOT NULL DEFAULT '0',
  `total_hits_taiko` int(11) NOT NULL DEFAULT '0',
  `total_hits_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_mania` int(11) NOT NULL DEFAULT '0',
  `playtime_std` int(11) NOT NULL DEFAULT '0',
  `playtime_taiko` int(11) NOT NULL DEFAULT '0',
  `playtime_mania` int(11) NOT NULL DEFAULT '0',
  `playtime_ctb` int(11) NOT NULL DEFAULT '0',
  `ranked_score_std` bigint(20) NOT NULL DEFAULT '0',
  `ranked_score_taiko` int(11) NOT NULL DEFAULT '0',
  `ranked_score_mania` int(11) NOT NULL DEFAULT '0',
  `ranked_score_ctb` int(11) NOT NULL DEFAULT '0',
  `avg_accuracy_std` double NOT NULL DEFAULT '0',
  `avg_accuracy_taiko` double NOT NULL DEFAULT '0',
  `avg_accuracy_mania` double NOT NULL DEFAULT '0',
  `avg_accuracy_ctb` double NOT NULL DEFAULT '0',
  `playcount_std` int(11) NOT NULL DEFAULT '0',
  `playcount_taiko` int(11) NOT NULL DEFAULT '0',
  `playcount_mania` int(11) NOT NULL DEFAULT '0',
  `playcount_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_std` int(11) NOT NULL DEFAULT '0',
  `pp_mania` int(11) NOT NULL DEFAULT '0',
  `pp_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_taiko` int(11) NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT '0',
  `ppboard` int(11) NOT NULL DEFAULT '1',
  `replays_watched_std` int(11) NOT NULL DEFAULT '0',
  `replays_watched_taiko` int(11) NOT NULL DEFAULT '0',
  `replays_watched_ctb` int(11) NOT NULL DEFAULT '0',
  `replays_watched_mania` int(11) NOT NULL DEFAULT '0',
  `achievements` bigint(20) NOT NULL DEFAULT '0',
  `max_combo_std` int(11) NOT NULL DEFAULT '0',
  `max_combo_taiko` int(11) NOT NULL DEFAULT '0',
  `max_combo_ctb` int(11) NOT NULL DEFAULT '0',
  `max_combo_mania` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(11) NOT NULL,
  `name` varchar(21485) NOT NULL,
  `icon` varchar(32) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bancho_channels`
--

CREATE TABLE `bancho_channels` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(127) NOT NULL,
  `public_read` tinyint(4) NOT NULL,
  `public_write` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `temp` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `auto_join` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bancho_settings`
--

CREATE TABLE `bancho_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bancho_tokens`
--

CREATE TABLE `bancho_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(16) CHARACTER SET latin1 NOT NULL,
  `osu_id` int(11) NOT NULL,
  `latest_message_id` int(11) NOT NULL,
  `latest_private_message_id` int(11) NOT NULL,
  `latest_packet_time` int(11) NOT NULL,
  `latest_heavy_packet_time` int(11) NOT NULL,
  `joined_channels` varchar(512) CHARACTER SET latin1 NOT NULL,
  `game_mode` tinyint(4) NOT NULL,
  `action` int(11) NOT NULL,
  `action_text` varchar(128) CHARACTER SET latin1 NOT NULL,
  `kicked` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banned_hwid`
--

CREATE TABLE `banned_hwid` (
  `id` int(11) NOT NULL,
  `mac_md5` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk_md5` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_md5` char(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ban_logs`
--

CREATE TABLE `ban_logs` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `summary` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beatmaps`
--

CREATE TABLE `beatmaps` (
  `beatmap_id` int(11) NOT NULL DEFAULT '0',
  `beatmapset_id` int(11) NOT NULL DEFAULT '0',
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `song_name` text CHARACTER SET latin1 NOT NULL,
  `ar` float NOT NULL DEFAULT '0',
  `od` float NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '10',
  `difficulty_std` float NOT NULL DEFAULT '0',
  `difficulty_taiko` float NOT NULL DEFAULT '0',
  `difficulty_ctb` float NOT NULL DEFAULT '0',
  `difficulty_mania` float NOT NULL DEFAULT '0',
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `hit_length` int(11) NOT NULL DEFAULT '0',
  `bpm` int(11) NOT NULL DEFAULT '0',
  `playcount` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `ranked` tinyint(4) NOT NULL DEFAULT '0',
  `latest_update` int(11) NOT NULL DEFAULT '0',
  `ranked_status_freezed` tinyint(1) NOT NULL DEFAULT '0',
  `pp_100` int(11) NOT NULL DEFAULT '0',
  `pp_99` int(11) NOT NULL DEFAULT '0',
  `pp_98` int(11) NOT NULL DEFAULT '0',
  `pp_95` int(11) NOT NULL DEFAULT '0',
  `disable_pp` tinyint(4) NOT NULL DEFAULT '0',
  `file_name` longtext,
  `rankedby` varchar(16) NOT NULL DEFAULT 'IDK',
  `priv_crawler` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


--
-- Table structure for table `beatmaps_rating`
--

CREATE TABLE `beatmaps_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_chan_logs`
--

CREATE TABLE `chat_chan_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_chan` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_logs`
--

CREATE TABLE `chat_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `content` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE `clans` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `icon` text NOT NULL,
  `tag` varchar(6) NOT NULL,
  `mlimit` int(11) NOT NULL DEFAULT '16'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clans_invites`
--

CREATE TABLE `clans_invites` (
  `id` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `invite` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_err_logs`
--

CREATE TABLE `client_err_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` int(11) NOT NULL,
  `traceback` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `osu_ver` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `osu_hash` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_verified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) NOT NULL DEFAULT '0',
  `beatmapset_id` int(11) NOT NULL DEFAULT '0',
  `score_id` int(11) NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL,
  `comment` varchar(128) CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL,
  `who` varchar(11) NOT NULL,
  `special_format` varchar(2556) CHARACTER SET utf8 DEFAULT 'FFFFFF'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discord_oauth`
--

CREATE TABLE `discord_oauth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `discord_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discord_roles`
--

CREATE TABLE `discord_roles` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `discordid` bigint(20) NOT NULL,
  `roleid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `first_places`
--

CREATE TABLE `first_places` (
  `id` int(11) NOT NULL,
  `score_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` bigint(20) NOT NULL,
  `max_combo` int(11) NOT NULL,
  `full_combo` tinyint(1) NOT NULL,
  `mods` int(11) NOT NULL,
  `300_count` int(11) NOT NULL,
  `100_count` int(11) NOT NULL,
  `50_count` int(11) NOT NULL,
  `ckatus_count` int(11) NOT NULL DEFAULT '0',
  `cgekis_count` int(11) NOT NULL DEFAULT '0',
  `miss_count` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `mode` tinyint(4) NOT NULL,
  `completed` tinyint(4) NOT NULL,
  `accuracy` float(15,12) NOT NULL,
  `pp` double NOT NULL,
  `play_time` int(11) NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL,
  `relax` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hw_user`
--

CREATE TABLE `hw_user` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `mac` varchar(32) CHARACTER SET latin1 NOT NULL,
  `unique_id` varchar(32) CHARACTER SET latin1 NOT NULL,
  `disk_id` varchar(32) CHARACTER SET latin1 NOT NULL,
  `client_hash` varchar(32) NOT NULL DEFAULT '',
  `occurencies` int(11) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `identity_tokens`
--

CREATE TABLE `identity_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(64) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_user`
--

CREATE TABLE `ip_user` (
  `userid` int(11) NOT NULL,
  `ip` text CHARACTER SET latin1 NOT NULL,
  `occurencies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `irc_tokens`
--

CREATE TABLE `irc_tokens` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lastfm_flags`
--

CREATE TABLE `lastfm_flags` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `flag_enum` int(11) NOT NULL,
  `flag_text` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_menu_icons`
--

CREATE TABLE `main_menu_icons` (
  `id` int(11) NOT NULL,
  `is_current` int(11) NOT NULL,
  `file_id` varchar(128) NOT NULL,
  `name` varchar(256) NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `merger_links`
--

CREATE TABLE `merger_links` (
  `id` int(11) NOT NULL,
  `source_id` int(11) NOT NULL,
  `rosu_id` int(11) NOT NULL,
  `merged` tinyint(1) NOT NULL DEFAULT '0',
  `src_server` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_achievements`
--

CREATE TABLE `new_achievements` (
  `id` int(11) NOT NULL,
  `file` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cond` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_recovery`
--

CREATE TABLE `password_recovery` (
  `id` int(11) NOT NULL,
  `k` varchar(80) CHARACTER SET latin1 NOT NULL,
  `u` varchar(30) CHARACTER SET latin1 NOT NULL,
  `t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pp_limits`
--

CREATE TABLE `pp_limits` (
  `mode` tinyint(1) NOT NULL,
  `relax` tinyint(1) NOT NULL,
  `pp` int(11) NOT NULL,
  `flashlight_pp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privileges_groups`
--

CREATE TABLE `privileges_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `privileges` int(11) NOT NULL,
  `color` varchar(32) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile_backgrounds`
--

CREATE TABLE `profile_backgrounds` (
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rank_requests`
--

CREATE TABLE `rank_requests` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `type` varchar(8) CHARACTER SET latin1 NOT NULL,
  `time` int(11) NOT NULL,
  `blacklisted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rap_logs`
--

CREATE TABLE `rap_logs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `text` text NOT NULL,
  `datetime` int(11) NOT NULL,
  `through` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `remember`
--

CREATE TABLE `remember` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `series_identifier` int(11) DEFAULT NULL,
  `token_sha` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `chatlog` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reworks`
--

CREATE TABLE `reworks` (
  `rework_id` int(11) NOT NULL,
  `rework_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` int(11) NOT NULL,
  `rx` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rework_queue`
--

CREATE TABLE `rework_queue` (
  `user_id` int(11) NOT NULL,
  `rework_id` int(11) NOT NULL,
  `processed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rework_scores`
--

CREATE TABLE `rework_scores` (
  `score_id` bigint(20) NOT NULL,
  `beatmap_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rework_id` int(11) NOT NULL,
  `max_combo` int(11) NOT NULL,
  `mods` int(11) NOT NULL,
  `accuracy` float NOT NULL,
  `score` bigint(20) NOT NULL,
  `num_300s` int(11) NOT NULL,
  `num_100s` int(11) NOT NULL,
  `num_50s` int(11) NOT NULL,
  `num_gekis` int(11) NOT NULL,
  `num_katus` int(11) NOT NULL,
  `num_misses` int(11) NOT NULL,
  `old_pp` float NOT NULL,
  `new_pp` float NOT NULL,
  `beatmapset_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rework_stats`
--

CREATE TABLE `rework_stats` (
  `user_id` int(11) NOT NULL,
  `rework_id` int(11) NOT NULL,
  `old_pp` int(11) NOT NULL,
  `new_pp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rx_beatmap_playcount`
--

CREATE TABLE `rx_beatmap_playcount` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) DEFAULT NULL,
  `game_mode` int(11) DEFAULT NULL,
  `playcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rx_stats`
--

CREATE TABLE `rx_stats` (
  `id` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username_aka` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `favourite_mode` int(11) NOT NULL DEFAULT '0',
  `level_std` int(11) NOT NULL DEFAULT '1',
  `level_taiko` int(11) NOT NULL DEFAULT '1',
  `level_mania` int(11) NOT NULL DEFAULT '1',
  `level_ctb` int(11) NOT NULL DEFAULT '1',
  `total_score_std` bigint(20) NOT NULL DEFAULT '0',
  `total_score_taiko` int(11) NOT NULL DEFAULT '0',
  `total_score_mania` int(11) NOT NULL DEFAULT '0',
  `total_score_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_std` int(11) NOT NULL DEFAULT '0',
  `total_hits_taiko` int(11) NOT NULL DEFAULT '0',
  `total_hits_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_mania` int(11) NOT NULL DEFAULT '0',
  `playtime_std` int(11) NOT NULL DEFAULT '0',
  `playtime_taiko` int(11) NOT NULL DEFAULT '0',
  `playtime_mania` int(11) NOT NULL DEFAULT '0',
  `playtime_ctb` int(11) NOT NULL DEFAULT '0',
  `ranked_score_std` bigint(20) NOT NULL DEFAULT '0',
  `ranked_score_taiko` int(11) NOT NULL DEFAULT '0',
  `ranked_score_mania` int(11) NOT NULL DEFAULT '0',
  `ranked_score_ctb` int(11) NOT NULL DEFAULT '0',
  `avg_accuracy_std` double NOT NULL DEFAULT '0',
  `avg_accuracy_taiko` double NOT NULL DEFAULT '0',
  `avg_accuracy_mania` double NOT NULL DEFAULT '0',
  `avg_accuracy_ctb` double NOT NULL DEFAULT '0',
  `playcount_std` int(11) NOT NULL DEFAULT '0',
  `playcount_taiko` int(11) NOT NULL DEFAULT '0',
  `playcount_mania` int(11) NOT NULL DEFAULT '0',
  `playcount_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_std` int(11) NOT NULL DEFAULT '0',
  `pp_mania` int(11) NOT NULL DEFAULT '0',
  `pp_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_taiko` int(11) NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT '0',
  `ppboard` int(11) NOT NULL DEFAULT '1',
  `replays_watched_std` int(11) NOT NULL DEFAULT '0',
  `replays_watched_taiko` int(11) NOT NULL DEFAULT '0',
  `replays_watched_ctb` int(11) NOT NULL DEFAULT '0',
  `replays_watched_mania` int(11) NOT NULL DEFAULT '0',
  `achievements` bigint(20) NOT NULL DEFAULT '0',
  `max_combo_std` int(11) DEFAULT '0',
  `max_combo_taiko` int(11) NOT NULL DEFAULT '0',
  `max_combo_ctb` int(11) NOT NULL DEFAULT '0',
  `max_combo_mania` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `full_combo` tinyint(1) NOT NULL DEFAULT '0',
  `mods` int(11) NOT NULL DEFAULT '0',
  `300_count` int(11) NOT NULL DEFAULT '0',
  `100_count` int(11) NOT NULL DEFAULT '0',
  `50_count` int(11) NOT NULL DEFAULT '0',
  `katus_count` int(11) NOT NULL DEFAULT '0',
  `gekis_count` int(11) NOT NULL DEFAULT '0',
  `misses_count` int(11) NOT NULL DEFAULT '0',
  `time` varchar(18) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT '0',
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` double DEFAULT '0',
  `playtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scores_ap`
--

CREATE TABLE `scores_ap` (
  `id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `full_combo` tinyint(1) NOT NULL DEFAULT '0',
  `mods` int(11) NOT NULL DEFAULT '0',
  `300_count` int(11) NOT NULL DEFAULT '0',
  `100_count` int(11) NOT NULL DEFAULT '0',
  `50_count` int(11) NOT NULL DEFAULT '0',
  `katus_count` int(11) NOT NULL DEFAULT '0',
  `gekis_count` int(11) NOT NULL DEFAULT '0',
  `misses_count` int(11) NOT NULL DEFAULT '0',
  `time` varchar(18) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT '0',
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` double DEFAULT '0',
  `playtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scores_queued`
--

CREATE TABLE `scores_queued` (
  `id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `full_combo` tinyint(1) NOT NULL DEFAULT '0',
  `mods` int(11) NOT NULL DEFAULT '0',
  `300_count` int(11) NOT NULL DEFAULT '0',
  `100_count` int(11) NOT NULL DEFAULT '0',
  `50_count` int(11) NOT NULL DEFAULT '0',
  `katus_count` int(11) NOT NULL DEFAULT '0',
  `gekis_count` int(11) NOT NULL DEFAULT '0',
  `misses_count` int(11) NOT NULL DEFAULT '0',
  `time` varchar(18) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT '0',
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` double DEFAULT '0',
  `playtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scores_relax`
--

CREATE TABLE `scores_relax` (
  `id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `full_combo` tinyint(1) NOT NULL DEFAULT '0',
  `mods` int(11) NOT NULL DEFAULT '0',
  `300_count` int(11) NOT NULL DEFAULT '0',
  `100_count` int(11) NOT NULL DEFAULT '0',
  `50_count` int(11) NOT NULL DEFAULT '0',
  `katus_count` int(11) NOT NULL DEFAULT '0',
  `gekis_count` int(11) NOT NULL DEFAULT '0',
  `misses_count` int(11) NOT NULL DEFAULT '0',
  `time` varchar(18) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT '0',
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` double DEFAULT '0',
  `playtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seasonal_bg`
--

CREATE TABLE `seasonal_bg` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `user` varchar(31) CHARACTER SET latin1 NOT NULL,
  `privileges` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `token` varchar(127) CHARACTER SET latin1 NOT NULL,
  `private` tinyint(4) NOT NULL,
  `last_updated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `osuver` varchar(256) DEFAULT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username_safe` varchar(30) CHARACTER SET latin1 NOT NULL,
  `ban_datetime` varchar(30) NOT NULL DEFAULT '0',
  `password_md5` varchar(127) CHARACTER SET latin1 NOT NULL,
  `salt` varchar(32) CHARACTER SET latin1 NOT NULL,
  `email` varchar(254) CHARACTER SET latin1 NOT NULL,
  `register_datetime` int(11) NOT NULL,
  `rank` tinyint(1) NOT NULL DEFAULT '1',
  `allowed` tinyint(1) NOT NULL DEFAULT '1',
  `latest_activity` int(11) NOT NULL DEFAULT '0',
  `silence_end` int(11) NOT NULL DEFAULT '0',
  `silence_reason` varchar(127) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `password_version` tinyint(4) NOT NULL DEFAULT '1',
  `privileges` bigint(20) NOT NULL,
  `donor_expire` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `achievements_version` int(11) NOT NULL DEFAULT '4',
  `achievements_0` int(11) NOT NULL DEFAULT '1',
  `achievements_1` int(11) NOT NULL DEFAULT '1',
  `notes` text,
  `frozen` int(11) NOT NULL DEFAULT '0',
  `freezedate` int(11) NOT NULL DEFAULT '0',
  `firstloginafterfrozen` int(11) NOT NULL DEFAULT '0',
  `bypass_hwid` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(128) NOT NULL DEFAULT '',
  `disabled_comments` tinyint(4) NOT NULL DEFAULT '0',
  `country` varchar(2) NOT NULL DEFAULT 'XX',
  `api_key` char(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_achievements`
--

CREATE TABLE `users_achievements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_beatmap_playcount`
--

CREATE TABLE `users_beatmap_playcount` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) DEFAULT NULL,
  `game_mode` int(11) DEFAULT NULL,
  `playcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_relationships`
--

CREATE TABLE `users_relationships` (
  `id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_stats`
--

CREATE TABLE `users_stats` (
  `id` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username_aka` varchar(64) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ranked_score_std` bigint(20) DEFAULT '0',
  `playcount_std` int(11) NOT NULL DEFAULT '0',
  `total_score_std` bigint(20) DEFAULT '0',
  `replays_watched_std` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ranked_score_taiko` bigint(20) DEFAULT '0',
  `playcount_taiko` int(11) NOT NULL DEFAULT '0',
  `total_score_taiko` bigint(20) DEFAULT '0',
  `replays_watched_taiko` int(11) NOT NULL DEFAULT '0',
  `ranked_score_ctb` bigint(20) DEFAULT '0',
  `playcount_ctb` int(11) NOT NULL DEFAULT '0',
  `total_score_ctb` bigint(20) DEFAULT '0',
  `replays_watched_ctb` int(11) NOT NULL DEFAULT '0',
  `ranked_score_mania` bigint(20) DEFAULT '0',
  `playcount_mania` int(11) NOT NULL DEFAULT '0',
  `total_score_mania` bigint(20) DEFAULT '0',
  `replays_watched_mania` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_hits_std` int(11) NOT NULL DEFAULT '0',
  `total_hits_taiko` int(11) NOT NULL DEFAULT '0',
  `total_hits_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_mania` int(11) NOT NULL DEFAULT '0',
  `country` char(2) CHARACTER SET latin1 NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT '0',
  `ppboard` int(11) NOT NULL DEFAULT '0',
  `show_country` tinyint(4) NOT NULL DEFAULT '1',
  `level_std` int(11) NOT NULL DEFAULT '1',
  `level_taiko` int(11) NOT NULL DEFAULT '1',
  `level_ctb` int(11) NOT NULL DEFAULT '1',
  `level_mania` int(11) NOT NULL DEFAULT '1',
  `playtime_std` int(11) NOT NULL DEFAULT '0',
  `playtime_taiko` int(11) NOT NULL DEFAULT '0',
  `playtime_ctb` int(11) NOT NULL DEFAULT '0',
  `playtime_mania` int(11) NOT NULL DEFAULT '0',
  `avg_accuracy_std` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `avg_accuracy_taiko` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `avg_accuracy_ctb` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `avg_accuracy_mania` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `pp_std` int(11) NOT NULL DEFAULT '0',
  `pp_taiko` int(11) NOT NULL DEFAULT '0',
  `pp_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_mania` int(11) NOT NULL DEFAULT '0',
  `badges_shown` varchar(24) CHARACTER SET latin1 NOT NULL DEFAULT '1,0,0,0,0,0',
  `safe_title` tinyint(4) NOT NULL DEFAULT '0',
  `userpage_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `play_style` smallint(6) NOT NULL DEFAULT '0',
  `favourite_mode` tinyint(4) NOT NULL DEFAULT '0',
  `prefer_relax` int(11) NOT NULL DEFAULT '0',
  `custom_badge_icon` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `custom_badge_name` varchar(256) NOT NULL DEFAULT '',
  `can_custom_badge` tinyint(1) NOT NULL DEFAULT '0',
  `show_custom_badge` tinyint(1) NOT NULL DEFAULT '0',
  `current_status` varchar(20000) NOT NULL DEFAULT 'Offline',
  `achievements` bigint(20) NOT NULL DEFAULT '0',
  `max_combo_std` int(11) NOT NULL DEFAULT '0',
  `max_combo_taiko` int(11) NOT NULL DEFAULT '0',
  `max_combo_ctb` int(11) NOT NULL DEFAULT '0',
  `max_combo_mania` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_clans`
--

CREATE TABLE `user_clans` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `perms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_comments`
--

CREATE TABLE `user_comments` (
  `id` int(11) NOT NULL,
  `op` int(11) NOT NULL,
  `prof` int(11) NOT NULL,
  `msg` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_date` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_country_history`
--

CREATE TABLE `user_country_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country_code` char(2) NOT NULL,
  `login_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_vpn` tinyint(1) NOT NULL,
  `ip_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_name_history`
--

CREATE TABLE `user_name_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `replaced_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_pinned`
--

CREATE TABLE `user_pinned` (
  `userid` int(11) NOT NULL,
  `scoreid` int(11) NOT NULL,
  `pin_date` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_history`
--

CREATE TABLE `user_profile_history` (
  `user_id` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  `captured_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rank` int(11) NOT NULL,
  `pp` int(11) DEFAULT NULL,
  `country_rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_statuses`
--

CREATE TABLE `user_statuses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ussr_achievements`
--

CREATE TABLE `ussr_achievements` (
  `id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cond` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------


--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_stats`
--
ALTER TABLE `ap_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_channels`
--
ALTER TABLE `bancho_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_settings`
--
ALTER TABLE `bancho_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `bancho_tokens`
--
ALTER TABLE `bancho_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned_hwid`
--
ALTER TABLE `banned_hwid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ban_logs`
--
ALTER TABLE `ban_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_id` (`to_id`);

--
-- Indexes for table `beatmaps`
--
ALTER TABLE `beatmaps`
  ADD PRIMARY KEY (`beatmap_id`),
  ADD UNIQUE KEY `beatmap_md5` (`beatmap_md5`),
  ADD KEY `ranked` (`ranked`),
  ADD KEY `beatmapset_id` (`beatmapset_id`),
  ADD KEY `mode` (`mode`),
  ADD KEY `ranked_status_freezed` (`ranked_status_freezed`);

--
-- Indexes for table `beatmaps_rating`
--
ALTER TABLE `beatmaps_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beatmap_md5` (`beatmap_md5`);

--
-- Indexes for table `chat_chan_logs`
--
ALTER TABLE `chat_chan_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target_chan` (`target_chan`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chat_logs`
--
ALTER TABLE `chat_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Indexes for table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans_invites`
--
ALTER TABLE `clans_invites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_err_logs`
--
ALTER TABLE `client_err_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discord_oauth`
--
ALTER TABLE `discord_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discord_id` (`discord_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `discord_roles`
--
ALTER TABLE `discord_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_places`
--
ALTER TABLE `first_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `completed` (`completed`);

--
-- Indexes for table `hw_user`
--
ALTER TABLE `hw_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `identity_tokens`
--
ALTER TABLE `identity_tokens`
  ADD UNIQUE KEY `userid` (`userid`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `ip_user`
--
ALTER TABLE `ip_user`
  ADD PRIMARY KEY (`userid`,`ip`(128)) USING BTREE;

--
-- Indexes for table `irc_tokens`
--
ALTER TABLE `irc_tokens`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `lastfm_flags`
--
ALTER TABLE `lastfm_flags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `main_menu_icons`
--
ALTER TABLE `main_menu_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merger_links`
--
ALTER TABLE `merger_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source_id` (`source_id`);

--
-- Indexes for table `new_achievements`
--
ALTER TABLE `new_achievements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file` (`file`),
  ADD UNIQUE KEY `desc` (`desc`),
  ADD UNIQUE KEY `cond` (`cond`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `password_recovery`
--
ALTER TABLE `password_recovery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges_groups`
--
ALTER TABLE `privileges_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `privileges` (`privileges`);

--
-- Indexes for table `profile_backgrounds`
--
ALTER TABLE `profile_backgrounds`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rank_requests`
--
ALTER TABLE `rank_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `rap_logs`
--
ALTER TABLE `rap_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remember`
--
ALTER TABLE `remember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reworks`
--
ALTER TABLE `reworks`
  ADD PRIMARY KEY (`rework_id`);

--
-- Indexes for table `rework_queue`
--
ALTER TABLE `rework_queue`
  ADD PRIMARY KEY (`user_id`,`rework_id`);

--
-- Indexes for table `rework_scores`
--
ALTER TABLE `rework_scores`
  ADD PRIMARY KEY (`score_id`,`rework_id`);

--
-- Indexes for table `rework_stats`
--
ALTER TABLE `rework_stats`
  ADD PRIMARY KEY (`user_id`,`rework_id`);

--
-- Indexes for table `rx_beatmap_playcount`
--
ALTER TABLE `rx_beatmap_playcount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playcount_index` (`user_id`,`beatmap_id`);

--
-- Indexes for table `rx_stats`
--
ALTER TABLE `rx_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index2` (`userid`),
  ADD KEY `beatmap_md5` (`beatmap_md5`),
  ADD KEY `completed` (`completed`),
  ADD KEY `play_mode` (`play_mode`),
  ADD KEY `idx_score` (`score`),
  ADD KEY `idx_pp` (`pp`);

--
-- Indexes for table `scores_ap`
--
ALTER TABLE `scores_ap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beatmap_md5` (`beatmap_md5`),
  ADD KEY `userid` (`userid`),
  ADD KEY `completed` (`completed`);

--
-- Indexes for table `scores_queued`
--
ALTER TABLE `scores_queued`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beatmap_md5` (`beatmap_md5`);

--
-- Indexes for table `scores_relax`
--
ALTER TABLE `scores_relax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beatmap_md5` (`beatmap_md5`),
  ADD KEY `userid` (`userid`),
  ADD KEY `completed` (`completed`),
  ADD KEY `play_mode` (`play_mode`),
  ADD KEY `idx_pp` (`pp`),
  ADD KEY `idx_score` (`score`);

--
-- Indexes for table `seasonal_bg`
--
ALTER TABLE `seasonal_bg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users_achievements`
--
ALTER TABLE `users_achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_beatmap_playcount`
--
ALTER TABLE `users_beatmap_playcount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playcount_index` (`user_id`,`beatmap_id`);

--
-- Indexes for table `users_relationships`
--
ALTER TABLE `users_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user1` (`user1`),
  ADD KEY `user2` (`user2`);

--
-- Indexes for table `users_stats`
--
ALTER TABLE `users_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `user_clans`
--
ALTER TABLE `user_clans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `clan` (`clan`);

--
-- Indexes for table `user_comments`
--
ALTER TABLE `user_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prof` (`prof`);

--
-- Indexes for table `user_country_history`
--
ALTER TABLE `user_country_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_vpn_index` (`user_id`,`is_vpn`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `user_name_history`
--
ALTER TABLE `user_name_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_pinned`
--
ALTER TABLE `user_pinned`
  ADD UNIQUE KEY `scoreid` (`scoreid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user_profile_history`
--
ALTER TABLE `user_profile_history`
  ADD PRIMARY KEY (`user_id`,`mode`,`captured_at`);

--
-- Indexes for table `user_statuses`
--
ALTER TABLE `user_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `ussr_achievements`
--
ALTER TABLE `ussr_achievements`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ap_stats`
--
ALTER TABLE `ap_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bancho_channels`
--
ALTER TABLE `bancho_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bancho_settings`
--
ALTER TABLE `bancho_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bancho_tokens`
--
ALTER TABLE `bancho_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned_hwid`
--
ALTER TABLE `banned_hwid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ban_logs`
--
ALTER TABLE `ban_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beatmaps_rating`
--
ALTER TABLE `beatmaps_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_chan_logs`
--
ALTER TABLE `chat_chan_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_logs`
--
ALTER TABLE `chat_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clans_invites`
--
ALTER TABLE `clans_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_err_logs`
--
ALTER TABLE `client_err_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discord_oauth`
--
ALTER TABLE `discord_oauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discord_roles`
--
ALTER TABLE `discord_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_places`
--
ALTER TABLE `first_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hw_user`
--
ALTER TABLE `hw_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lastfm_flags`
--
ALTER TABLE `lastfm_flags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_menu_icons`
--
ALTER TABLE `main_menu_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merger_links`
--
ALTER TABLE `merger_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_achievements`
--
ALTER TABLE `new_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_recovery`
--
ALTER TABLE `password_recovery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privileges_groups`
--
ALTER TABLE `privileges_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rank_requests`
--
ALTER TABLE `rank_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rap_logs`
--
ALTER TABLE `rap_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remember`
--
ALTER TABLE `remember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reworks`
--
ALTER TABLE `reworks`
  MODIFY `rework_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rx_beatmap_playcount`
--
ALTER TABLE `rx_beatmap_playcount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rx_stats`
--
ALTER TABLE `rx_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scores_ap`
--
ALTER TABLE `scores_ap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scores_queued`
--
ALTER TABLE `scores_queued`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scores_relax`
--
ALTER TABLE `scores_relax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasonal_bg`
--
ALTER TABLE `seasonal_bg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_achievements`
--
ALTER TABLE `users_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_beatmap_playcount`
--
ALTER TABLE `users_beatmap_playcount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_relationships`
--
ALTER TABLE `users_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_stats`
--
ALTER TABLE `users_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_clans`
--
ALTER TABLE `user_clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_comments`
--
ALTER TABLE `user_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_country_history`
--
ALTER TABLE `user_country_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_name_history`
--
ALTER TABLE `user_name_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_statuses`
--
ALTER TABLE `user_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
