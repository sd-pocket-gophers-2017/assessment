PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

CREATE TABLE players (
  id INTEGER PRIMARY KEY,
  name VARCHAR NOT NULL UNIQUE,
  created_at DATETIME NOT NULL,
  updated_at DATETIMEN NOT NULL
);

INSERT INTO "players" VALUES(1,'Shannon Boxx', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(2,'Hope Solo', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(3,'Abby Wambach', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(4,'Patrick Kane', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(5,'Jonathan Toews', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(6,'Lebron James', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(7,'Kyrie Irving', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(8,'Tony Romo', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(9,'Dez Bryant', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(10,'Kerri Walsh', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(11,'Misty May-Treanor', DATETIME('now'), DATETIME('now'));
INSERT INTO "players" VALUES(12,'Julie Johnston', DATETIME('now'), DATETIME('now'));


CREATE TABLE positions (
  id INTEGER PRIMARY KEY,
  title VARCHAR NOT NULL,
  jersey_number INTEGER NOT NULL,
  team_id INTEGER NOT NULL,
  player_id INTEGER NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIMEN NOT NULL,
  FOREIGN KEY(team_id) REFERENCES team(id),
  FOREIGN KEY(player_id) REFERENCES player(id)
);
INSERT INTO "positions" VALUES(1,'Midfielder',7,1,1, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(2,'Goalkeeper',1,1,2, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(3,'Forward',20,1,3, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(4,'Right Wing',88,2,4, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(5,'Center',19,2,5, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(6,'Forward',23,3,6, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(7,'Point Guard',2,3,7, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(8,'Quarterback',9,4,8, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(9,'Wide Receiver',88,4,9, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(10,'Setter',0,5,10, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(11,'Hitter',0,5,11, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(12,'Midfielder',38,6,1, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(13,'Defender',19,1,12, DATETIME('now'), DATETIME('now'));
INSERT INTO "positions" VALUES(14,'Defender',23,6,12, DATETIME('now'), DATETIME('now'));


CREATE TABLE teams (
  id INTEGER PRIMARY KEY,
  name VARCHAR NOT NULL UNIQUE,
  sport VARCHAR NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIMEN NOT NULL
);

INSERT INTO "teams" VALUES(1,'United States National Soccer','Soccer', DATETIME('now'), DATETIME('now'));
INSERT INTO "teams" VALUES(2,'Chicago Blackhawks','Hockey', DATETIME('now'), DATETIME('now'));
INSERT INTO "teams" VALUES(3,'Cleveland Cavaliers','Basketball', DATETIME('now'), DATETIME('now'));
INSERT INTO "teams" VALUES(4,'Dallas Cowboys','Football', DATETIME('now'), DATETIME('now'));
INSERT INTO "teams" VALUES(5,'United States National Volleyball','Volleyball', DATETIME('now'), DATETIME('now'));
INSERT INTO "teams" VALUES(6,'Chicago Red Stars','Soccer', DATETIME('now'), DATETIME('now'));
INSERT INTO "teams" VALUES(7,'Oakland Raiders','Football', DATETIME('now'), DATETIME('now'));

COMMIT;
