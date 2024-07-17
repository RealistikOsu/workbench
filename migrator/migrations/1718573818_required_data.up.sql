-- Treating these as a migration as they are REQUIRED for the server to work.

-- RealistikBot
INSERT INTO `users` 
(`id`, `osuver`, `username`, `username_safe`, `ban_datetime`, `password_md5`, `salt`, `email`, `register_datetime`, `rank`, `allowed`, `latest_activity`, `silence_end`, `silence_reason`, `password_version`, `privileges`, `donor_expire`, `flags`, `achievements_version`, `achievements_0`, `achievements_1`, `notes`, `frozen`, `freezedate`, `firstloginafterfrozen`, `bypass_hwid`, `ban_reason`, `disabled_comments`, `country`, `api_key`)
VALUES
(999, NULL, 'RealistikBot', 'realistikbot', '0', 'cool password!', '', 'rel@es.to', '1578160000', '4', '1', '1705887295', '1717597643', 'Spamming (auto spam protection)', '2', '1073741827', '2147483647', '0', '0', '1', '1', 'Why are you running?\r\n[2022-12-12 18:13:16] Username change: \'RealistikBot\' -> \'RealistikBot\'', '0', '0', '0', '0', '', '0', 'PL', '');

INSERT INTO `users_stats` 
(`id`, `username`, `username_aka`, `user_color`, `user_style`, `ranked_score_std`, `playcount_std`, `total_score_std`, `replays_watched_std`, `ranked_score_taiko`, `playcount_taiko`, `total_score_taiko`, `replays_watched_taiko`, `ranked_score_ctb`, `playcount_ctb`, `total_score_ctb`, `replays_watched_ctb`, `ranked_score_mania`, `playcount_mania`, `total_score_mania`, `replays_watched_mania`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `country`, `unrestricted_pp`, `ppboard`, `show_country`, `level_std`, `level_taiko`, `level_ctb`, `level_mania`, `playtime_std`, `playtime_taiko`, `playtime_ctb`, `playtime_mania`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_ctb`, `avg_accuracy_mania`, `pp_std`, `pp_taiko`, `pp_ctb`, `pp_mania`, `badges_shown`, `safe_title`, `userpage_content`, `play_style`, `favourite_mode`, `prefer_relax`, `custom_badge_icon`, `custom_badge_name`, `can_custom_badge`, `show_custom_badge`, `current_status`, `achievements`, `max_combo_std`, `max_combo_taiko`, `max_combo_ctb`, `max_combo_mania`)
VALUES 
(999, 'RealistikBot', '', 'black', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'GB', '1', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0.000000000000', '0.000000000000', '0.000000000000', '0.000000000000', '0', '0', '0', '0', '3,4,11,0,0,0', '0', NULL, '0', '0', '0', '', '', '1', '1', 'Dead', '0', '0', '0', '0', '0');

INSERT INTO `rx_stats` 
(`id`, `username`, `username_aka`, `user_color`, `user_style`, `favourite_mode`, `level_std`, `level_taiko`, `level_mania`, `level_ctb`, `total_score_std`, `total_score_taiko`, `total_score_mania`, `total_score_ctb`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `playtime_std`, `playtime_taiko`, `playtime_mania`, `playtime_ctb`, `ranked_score_std`, `ranked_score_taiko`, `ranked_score_mania`, `ranked_score_ctb`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_mania`, `avg_accuracy_ctb`, `playcount_std`, `playcount_taiko`, `playcount_mania`, `playcount_ctb`, `pp_std`, `pp_mania`, `pp_ctb`, `pp_taiko`, `country`, `unrestricted_pp`, `ppboard`, `replays_watched_std`, `replays_watched_taiko`, `replays_watched_ctb`, `replays_watched_mania`, `achievements`, `max_combo_std`, `max_combo_taiko`, `max_combo_ctb`, `max_combo_mania`)
VALUES 
(999, 'RealistikBot', '', 'black', '', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'GB', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');

INSERT INTO `ap_stats` 
(`id`, `username`, `username_aka`, `user_color`, `user_style`, `favourite_mode`, `level_std`, `level_taiko`, `level_mania`, `level_ctb`, `total_score_std`, `total_score_taiko`, `total_score_mania`, `total_score_ctb`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `playtime_std`, `playtime_taiko`, `playtime_mania`, `playtime_ctb`, `ranked_score_std`, `ranked_score_taiko`, `ranked_score_mania`, `ranked_score_ctb`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_mania`, `avg_accuracy_ctb`, `playcount_std`, `playcount_taiko`, `playcount_mania`, `playcount_ctb`, `pp_std`, `pp_mania`, `pp_ctb`, `pp_taiko`, `country`, `unrestricted_pp`, `ppboard`, `replays_watched_std`, `replays_watched_taiko`, `replays_watched_ctb`, `replays_watched_mania`, `achievements`, `max_combo_std`, `max_combo_taiko`, `max_combo_ctb`, `max_combo_mania`) 
VALUES 
(999, 'RealistikBot', '', 'black', '', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'GB', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');


-- Default Channels
INSERT INTO `bancho_channels` (`id`, `name`, `description`, `public_read`, `public_write`, `status`, `temp`, `hidden`, `auto_join`) VALUES
(1, '#osu', 'The primary general RealistikOsu chat channel.', 1, 1, 1, 0, 0, 1),
(2, '#announce', 'The channel where all announcements are sent (such as new number 1 scores).', 1, 0, 1, 0, 0, 1),
(3, '#polish', 'The chat for the Polish community of RealistikOsu!', 1, 1, 1, 0, 0, 0),
(6, '#lobby', 'This is the lobby where you find games to play with others!', 1, 1, 1, 0, 1, 0),
(7, '#ranked', 'This is where newly ranked maps will appear.', 1, 0, 1, 0, 0, 1);

INSERT INTO `bancho_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'bancho_maintenance', 0, ''),
(2, 'free_direct', 0, ''),
(3, 'menu_icon', 1, 'https://ussr.pl/static/logos/logo1.png | https://ussr.pl'),
(4, 'login_messages', 1, ''),
(6, 'login_notification', 1, 'You have connected to RealistikOsu!'),
(7, 'osu_versions', 0, ''),
(8, 'osu_md5s', 0, '');

INSERT INTO `system_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'website_maintenance', 0, ''),
(2, 'game_maintenance', 0, ''),
(3, 'website_global_alert', 0, ''),
(4, 'website_home_alert', 0, ''),
(5, 'registrations_enabled', 1, ''),
(6, 'ccreation_enabled', 1, '');

-- Achievements.
INSERT INTO `ussr_achievements` (`id`, `file`, `name`, `desc`, `cond`) VALUES
(1, 'osu-skill-pass-1', 'Rising Star', 'Can\'t go forward without the first steps.', '(score.mods & 1 == 0) and 1 <= score.sr < 2 and mode_vn == 0'),
(2, 'osu-skill-pass-2', 'Constellation Prize', 'Definitely not a consolation prize. Now things start getting hard!', '(score.mods & 1 == 0) and 2 <= score.sr < 3 and mode_vn == 0'),
(3, 'osu-skill-pass-3', 'Building Confidence', 'Oh, you\'ve SO got this.', '(score.mods & 1 == 0) and 3 <= score.sr < 4 and mode_vn == 0'),
(4, 'osu-skill-pass-4', 'Insanity Approaches', 'You\'re not twitching, you\'re just ready.', '(score.mods & 1 == 0) and 4 <= score.sr < 5 and mode_vn == 0'),
(5, 'osu-skill-pass-5', 'These Clarion Skies', 'Everything seems so clear now.', '(score.mods & 1 == 0) and 5 <= score.sr < 6 and mode_vn == 0'),
(6, 'osu-skill-pass-6', 'Above and Beyond', 'A cut above the rest.', '(score.mods & 1 == 0) and 6 <= score.sr < 7 and mode_vn == 0'),
(7, 'osu-skill-pass-7', 'Supremacy', 'All marvel before your prowess.', '(score.mods & 1 == 0) and 7 <= score.sr < 8 and mode_vn == 0'),
(8, 'osu-skill-pass-8', 'Absolution', 'My god, you\'re full of stars!', '(score.mods & 1 == 0) and 8 <= score.sr < 9 and mode_vn == 0'),
(9, 'osu-skill-pass-9', 'Event Horizon', 'No force dares to pull you under.', '(score.mods & 1 == 0) and 9 <= score.sr < 10 and mode_vn == 0'),
(10, 'osu-skill-pass-10', 'Phantasm', 'Fevered is your passion, extraordinary is your skill.', '(score.mods & 1 == 0) and 10 <= score.sr < 11 and mode_vn == 0'),
(11, 'osu-skill-fc-1', 'Totality', 'All the notes. Every single one.', 'score.full_combo and 1 <= score.sr < 2 and mode_vn == 0'),
(12, 'osu-skill-fc-2', 'Business As Usual', 'Two to go, please.', 'score.full_combo and 2 <= score.sr < 3 and mode_vn == 0'),
(13, 'osu-skill-fc-3', 'Building Steam', 'Hey, this isn\'t so bad.', 'score.full_combo and 3 <= score.sr < 4 and mode_vn == 0'),
(14, 'osu-skill-fc-4', 'Moving Forward', 'Bet you feel good about that.', 'score.full_combo and 4 <= score.sr < 5 and mode_vn == 0'),
(15, 'osu-skill-fc-5', 'Paradigm Shift', 'Surprisingly difficult.', 'score.full_combo and 5 <= score.sr < 6 and mode_vn == 0'),
(16, 'osu-skill-fc-6', 'Anguish Quelled', 'Don\'t choke.', 'score.full_combo and 6 <= score.sr < 7 and mode_vn == 0'),
(17, 'osu-skill-fc-7', 'Never Give Up', 'Excellence is its own reward.', 'score.full_combo and 7 <= score.sr < 8 and mode_vn == 0'),
(18, 'osu-skill-fc-8', 'Aberration', 'They said it couldn\'t be done. They were wrong.', 'score.full_combo and 8 <= score.sr < 9 and mode_vn == 0'),
(19, 'osu-skill-fc-9', 'Chosen', 'Reign among the Prometheans, where you belong.', 'score.full_combo and 9 <= score.sr < 10 and mode_vn == 0'),
(20, 'osu-skill-fc-10', 'Unfathomable', 'You have no equal.', 'score.full_combo and 10 <= score.sr < 11 and mode_vn == 0'),
(21, 'osu-combo-500', '500 Combo', '500 big ones! You\'re moving up in the world!', '500 <= score.max_combo < 750 and mode_vn == 0'),
(22, 'osu-combo-750', '750 Combo', '750 notes back to back? Woah.', '750 <= score.max_combo < 1000 and mode_vn == 0'),
(23, 'osu-combo-1000', '1000 Combo', 'A thousand reasons why you rock at this game.', '1000 <= score.max_combo < 2000 and mode_vn == 0'),
(24, 'osu-combo-2000', '2000 Combo', 'Nothing can stop you now.', '2000 <= score.max_combo and mode_vn == 0'),
(25, 'taiko-skill-pass-1', 'My First Don', 'Marching to the beat of your own drum. Literally.', '(score.mods & 1 == 0) and 1 <= score.sr < 2 and mode_vn == 1'),
(26, 'taiko-skill-pass-2', 'Katsu Katsu Katsu', 'Hora! Izuko!', '(score.mods & 1 == 0) and 2 <= score.sr < 3 and mode_vn == 1'),
(27, 'taiko-skill-pass-3', 'Not Even Trying', 'Muzukashii? Not even.', '(score.mods & 1 == 0) and 3 <= score.sr < 4 and mode_vn == 1'),
(28, 'taiko-skill-pass-4', 'Face Your Demons', 'The first trials are now behind you, but are you a match for the Oni?', '(score.mods & 1 == 0) and 4 <= score.sr < 5 and mode_vn == 1'),
(29, 'taiko-skill-pass-5', 'The Demon Within', 'No rest for the wicked.', '(score.mods & 1 == 0) and 5 <= score.sr < 6 and mode_vn == 1'),
(30, 'taiko-skill-pass-6', 'Drumbreaker', 'Too strong.', '(score.mods & 1 == 0) and 6 <= score.sr < 7 and mode_vn == 1'),
(31, 'taiko-skill-pass-7', 'The Godfather', 'You are the Don of Dons.', '(score.mods & 1 == 0) and 7 <= score.sr < 8 and mode_vn == 1'),
(32, 'taiko-skill-pass-8', 'Rhythm Incarnate', 'Feel the beat. Become the beat.', '(score.mods & 1 == 0) and 8 <= score.sr < 9 and mode_vn == 1'),
(33, 'taiko-skill-fc-1', 'Keeping Time', 'Don, then katsu. Don, then katsu..', 'score.full_combo and 1 <= score.sr < 2 and mode_vn == 1'),
(34, 'taiko-skill-fc-2', 'To Your Own Beat', 'Straight and steady.', 'score.full_combo and 2 <= score.sr < 3 and mode_vn == 1'),
(35, 'taiko-skill-fc-3', 'Big Drums', 'Bigger scores to match.', 'score.full_combo and 3 <= score.sr < 4 and mode_vn == 1'),
(36, 'taiko-skill-fc-4', 'Adversity Overcome', 'Difficult? Not for you.', 'score.full_combo and 4 <= score.sr < 5 and mode_vn == 1'),
(37, 'taiko-skill-fc-5', 'Demonslayer', 'An Oni felled forevermore.', 'score.full_combo and 5 <= score.sr < 6 and mode_vn == 1'),
(38, 'taiko-skill-fc-6', 'Rhythm\'s Call', 'Heralding true skill.', 'score.full_combo and 6 <= score.sr < 7 and mode_vn == 1'),
(39, 'taiko-skill-fc-7', 'Time Everlasting', 'Not a single beat escapes you.', 'score.full_combo and 7 <= score.sr < 8 and mode_vn == 1'),
(40, 'taiko-skill-fc-8', 'The Drummer\'s Throne', 'Percussive brilliance befitting royalty alone.', 'score.full_combo and 8 <= score.sr < 9 and mode_vn == 1'),
(41, 'fruits-skill-pass-1', 'A Slice Of Life', 'Hey, this fruit catching business isn\'t bad.', '(score.mods & 1 == 0) and 1 <= score.sr < 2 and mode_vn == 2'),
(42, 'fruits-skill-pass-2', 'Dashing Ever Forward', 'Fast is how you do it.', '(score.mods & 1 == 0) and 2 <= score.sr < 3 and mode_vn == 2'),
(43, 'fruits-skill-pass-3', 'Zesty Disposition', 'No scurvy for you, not with that much fruit.', '(score.mods & 1 == 0) and 3 <= score.sr < 4 and mode_vn == 2'),
(44, 'fruits-skill-pass-4', 'Hyperdash ON!', 'Time and distance is no obstacle to you.', '(score.mods & 1 == 0) and 4 <= score.sr < 5 and mode_vn == 2'),
(45, 'fruits-skill-pass-5', 'It\'s Raining Fruit', 'And you can catch them all.', '(score.mods & 1 == 0) and 5 <= score.sr < 6 and mode_vn == 2'),
(46, 'fruits-skill-pass-6', 'Fruit Ninja', 'Legendary techniques.', '(score.mods & 1 == 0) and 6 <= score.sr < 7 and mode_vn == 2'),
(47, 'fruits-skill-pass-7', 'Dreamcatcher', 'No fruit, only dreams now.', '(score.mods & 1 == 0) and 7 <= score.sr < 8 and mode_vn == 2'),
(48, 'fruits-skill-pass-8', 'Lord of the Catch', 'Your kingdom kneels before you.', '(score.mods & 1 == 0) and 8 <= score.sr < 9 and mode_vn == 2'),
(49, 'fruits-skill-fc-1', 'Sweet And Sour', 'Apples and oranges, literally.', 'score.full_combo and 1 <= score.sr < 2 and mode_vn == 2'),
(50, 'fruits-skill-fc-2', 'Reaching The Core', 'The seeds of future success.', 'score.full_combo and 2 <= score.sr < 3 and mode_vn == 2'),
(51, 'fruits-skill-fc-3', 'Clean Platter', 'Clean only of failure. It is completely full, otherwise.', 'score.full_combo and 3 <= score.sr < 4 and mode_vn == 2'),
(52, 'fruits-skill-fc-4', 'Between The Rain', 'No umbrella needed.', 'score.full_combo and 4 <= score.sr < 5 and mode_vn == 2'),
(53, 'fruits-skill-fc-5', 'Addicted', 'That was an overdose?', 'score.full_combo and 5 <= score.sr < 6 and mode_vn == 2'),
(54, 'fruits-skill-fc-6', 'Quickening', 'A dash above normal limits.', 'score.full_combo and 6 <= score.sr < 7 and mode_vn == 2'),
(55, 'fruits-skill-fc-7', 'Supersonic', 'Faster than is reasonably necessary.', 'score.full_combo and 7 <= score.sr < 8 and mode_vn == 2'),
(56, 'fruits-skill-fc-8', 'Dashing Scarlet', 'Speed beyond mortal reckoning.', 'score.full_combo and 8 <= score.sr < 9 and mode_vn == 2'),
(57, 'mania-skill-pass-1', 'First Steps', 'It isn\'t 9-to-5, but 1-to-9. Keys, that is.', '(score.mods & 1 == 0) and 1 <= score.sr < 2 and mode_vn == 3'),
(58, 'mania-skill-pass-2', 'No Normal Player', 'Not anymore, at least.', '(score.mods & 1 == 0) and 2 <= score.sr < 3 and mode_vn == 3'),
(59, 'mania-skill-pass-3', 'Impulse Drive', 'Not quite hyperspeed, but getting close.', '(score.mods & 1 == 0) and 3 <= score.sr < 4 and mode_vn == 3'),
(60, 'mania-skill-pass-4', 'Hyperspeed', 'Woah.', '(score.mods & 1 == 0) and 4 <= score.sr < 5 and mode_vn == 3'),
(61, 'mania-skill-pass-5', 'Ever Onwards', 'Another challenge is just around the corner.', '(score.mods & 1 == 0) and 5 <= score.sr < 6 and mode_vn == 3'),
(62, 'mania-skill-pass-6', 'Another Surpassed', 'Is there no limit to your skills?', '(score.mods & 1 == 0) and 6 <= score.sr < 7 and mode_vn == 3'),
(63, 'mania-skill-pass-7', 'Extra Credit', 'See me after class.', '(score.mods & 1 == 0) and 7 <= score.sr < 8 and mode_vn == 3'),
(64, 'mania-skill-pass-8', 'Maniac', 'There\'s just no stopping you.', '(score.mods & 1 == 0) and 8 <= score.sr < 9 and mode_vn == 3'),
(65, 'mania-skill-fc-1', 'Keystruck', 'The beginning of a new story', 'score.full_combo and 1 <= score.sr < 2 and mode_vn == 3'),
(66, 'mania-skill-fc-2', 'Keying In', 'Finding your groove.', 'score.full_combo and 2 <= score.sr < 3 and mode_vn == 3'),
(67, 'mania-skill-fc-3', 'Hyperflow', 'You can *feel* the rhythm.', 'score.full_combo and 3 <= score.sr < 4 and mode_vn == 3'),
(68, 'mania-skill-fc-4', 'Breakthrough', 'Many skills mastered, rolled into one.', 'score.full_combo and 4 <= score.sr < 5 and mode_vn == 3'),
(69, 'mania-skill-fc-5', 'Everything Extra', 'Giving your all is giving everything you have.', 'score.full_combo and 5 <= score.sr < 6 and mode_vn == 3'),
(70, 'mania-skill-fc-6', 'Level Breaker', 'Finesse beyond reason', 'score.full_combo and 6 <= score.sr < 7 and mode_vn == 3'),
(71, 'mania-skill-fc-7', 'Step Up', 'A precipice rarely seen.', 'score.full_combo and 7 <= score.sr < 8 and mode_vn == 3'),
(72, 'mania-skill-fc-8', 'Behind The Veil', 'Supernatural!', 'score.full_combo and 8 <= score.sr < 9 and mode_vn == 3'),
(73, 'osu-plays-5000', '5,000 Plays', 'There\'s a lot more where that came from.', '5000 <= stats.playcount and mode_vn == 0'),
(74, 'osu-plays-15000', '15,000 Plays', 'Must.. click.. circles..', '15000 <= stats.playcount and mode_vn == 0'),
(75, 'osu-plays-25000', '25,000 Plays', 'There\'s no going back.', '25000 <= stats.playcount and mode_vn == 0'),
(76, 'osu-plays-50000', '50,000 Plays', 'You\'re here forever.', '50000 <= stats.playcount and mode_vn == 0'),
(77, 'taiko-hits-30000', '30,000 Drum Hits', 'Did that drum have a face?', '30000 <= stats.total_hits and mode_vn == 1'),
(78, 'taiko-hits-300000', '300,000 Drum Hits', 'The rhythm never stops.', '300000 <= stats.total_hits and mode_vn == 1'),
(79, 'taiko-hits-3000000', '3,000,000 Drum Hits', 'Truly, the Don of dons.', '3000000 <= stats.total_hits and mode_vn == 1'),
(80, 'fruits-hits-20000', 'Catch 20,000 fruits', 'That is a lot of dietary fiber.', '20000 <= stats.total_hits and mode_vn == 2'),
(81, 'fruits-hits-200000', 'Catch 200,000 fruits', 'So, I heard you like fruit..', '200000 <= stats.total_hits and mode_vn == 2'),
(82, 'fruits-hits-2000000', 'Catch 2,000,000 fruits', 'Downright healthy.', '2000000 <= stats.total_hits and mode_vn == 2'),
(83, 'mania-hits-40000', '40,000 Keys', 'Just the start of the rainbow.', '40000 <= stats.total_hits and mode_vn == 3'),
(84, 'mania-hits-400000', '400,000 Keys', 'Four hundred thousand and still not even close.', '400000 <= stats.total_hits and mode_vn == 3'),
(85, 'mania-hits-4000000', '4,000,000 Keys', 'Is this the end of the rainbow?', '4000000 <= stats.total_hits and mode_vn == 3'),
(86, 'all-intro-suddendeath', 'Finality', 'High stakes, no regrets.', '(score.mods & 32 != 0) and score.passed'),
(87, 'all-intro-perfect', 'Perfectionist', 'Accept nothing but the best.', '(score.mods & 16384 != 0) and score.passed'),
(88, 'all-intro-hardrock', 'Rock Around The Clock', 'You can\'t stop the rock.', '(score.mods & 16 != 0) and score.passed'),
(89, 'all-intro-doubletime', 'Time And A Half', 'Having a right ol\' time. One and a half of them, almost.', '(score.mods & 64 != 0) and score.passed'),
(90, 'all-intro-nightcore', 'Sweet Rave Party', 'Founded in the fine tradition of changing things that were just fine as they were.', '(score.mods & 512 != 0) and score.passed'),
(91, 'all-intro-hidden', 'Blindsight', 'I can see just perfectly.', '(score.mods & 8 != 0) and score.passed'),
(92, 'all-intro-flashlight', 'Are You Afraid Of The Dark?', 'Harder than it looks, probably because it\'s hard to look.', '(score.mods & 1024 != 0) and score.passed'),
(93, 'all-intro-easy', 'Dial It Right Back', 'Sometimes you just want to take it easy.', '(score.mods & 2 != 0) and score.passed'),
(94, 'all-intro-nofail', 'Risk Averse', 'Safety nets are fun!', '(score.mods & 1 != 0) and score.passed'),
(95, 'all-intro-halftime', 'Slowboat', 'You got there. Eventually.', '(score.mods & 256 != 0) and score.passed'),
(96, 'all-intro-spunout', 'Burned Out', 'One cannot always spin to win.', '(score.mods & 4096 != 0) and score.passed');
