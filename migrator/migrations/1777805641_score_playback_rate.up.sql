ALTER TABLE scores         ADD COLUMN playback_rate DECIMAL(3,2) NOT NULL DEFAULT 1.00;
ALTER TABLE scores_relax   ADD COLUMN playback_rate DECIMAL(3,2) NOT NULL DEFAULT 1.00;
ALTER TABLE scores_ap      ADD COLUMN playback_rate DECIMAL(3,2) NOT NULL DEFAULT 1.00;
ALTER TABLE scores_queued  ADD COLUMN playback_rate DECIMAL(3,2) NOT NULL DEFAULT 1.00;

-- DT rate backfill
UPDATE scores        SET playback_rate = 1.50 WHERE mods & 64;
UPDATE scores_relax  SET playback_rate = 1.50 WHERE mods & 64;
UPDATE scores_ap     SET playback_rate = 1.50 WHERE mods & 64;
UPDATE scores_queued SET playback_rate = 1.50 WHERE mods & 64;

-- HT rate backfill
UPDATE scores        SET playback_rate = 0.75 WHERE mods & 256;
UPDATE scores_relax  SET playback_rate = 0.75 WHERE mods & 256;
UPDATE scores_ap     SET playback_rate = 0.75 WHERE mods & 256;
UPDATE scores_queued SET playback_rate = 0.75 WHERE mods & 256;
