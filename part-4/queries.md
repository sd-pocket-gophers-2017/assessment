# Part 4: SQL
Record your queries and any resulting output below.

## Release 0:  Query the Database
1.  What are all the player names?

    Query:

    ```sql
SELECT name
FROM players;
    ```

    Result:

    ```sql
Abby Wambach
Dez Bryant
Hope Solo
Jonathan Toe
Julie Johnst
Kerri Walsh
Kyrie Irving
Lebron James
Misty May-Tr
Patrick Kane
Shannon Boxx
Tony Romo
    ```

2.  Which team names include the word "Chicago"?

    Query:

    ```sql
SELECT name
FROM teams
WHERE name LIKE '%chicago%';
    ```

    Result:

    ```sql
Chicago Blackhawks
Chicago Red Stars
    ```

3.  What are the titles of the positions on the team named "Chicago Blackhawks"?

    Query:

    ```sql
SELECT positions.title
FROM positions
JOIN teams
ON positions.team_id=teams.id
WHERE teams.name = 'Chicago Blackhawks';
    ```

    Result:

    ```sql
Right Wing
Center
    ```

4.  What are the names of the teams Shannon Boxx plays for?

    Query:

    ```sql
SELECT teams.name
FROM teams
JOIN positions
ON positions.team_id=teams.id
JOIN players
ON positions.player_id=players.id
WHERE players.name = 'Shannon Boxx';
    ```

    Result:

    ```sql
United States National Soccer
Chicago Red Stars
    ```

5.  What are the names of the players who play soccer? (Each name should be listed once; no repeats.)

    Query:

    ```sql
SELECT DISTINCT players.name
FROM players
JOIN positions
ON positions.player_id=players.id
JOIN teams
ON positions.team_id=teams.id
WHERE teams.sport LIKE '%soccer%';
    ```

    Result:

    ```sql
Shannon Boxx
Hope Solo
Abby Wambach
Julie Johnst
    ```

6.  What is the name of the team with the most players, and how many players does it have?

    Query:

    ```sql
SELECT teams.name, COUNT(*)
FROM teams
JOIN positions
ON positions.team_id=teams.id
JOIN players
ON positions.player_id=players.id
GROUP BY teams.name
ORDER BY COUNT(*) DESC
LIMIT 1;
    ```

    Result:

    ```sql
name                           COUNT(*)
-----------------------------  ----------
United States National Soccer  4
    ```


### Release 1: Modify the Database
1.  The Chicago Blackhawks, one of the teams in the database, signed a player to play "Center" and wear jersey number 99.  The player's name is "Kevin Solorio".  Update the database to reflect this.

    Statements run:

    ```sql
INSERT INTO players (name, created_at, updated_at)
VALUES ('Kevin Solorio', DATETIME('now'), DATETIME('now'));
INSERT INTO positions (title, jersey_number, team_id, player_id, created_at, updated_at)                                        VALUES ('Center', 99, (SELECT teams.id FROM teams WHERE teams.name = 'Chicago Blackhawks'), (SELECT players.id FROM players WHERE players.name = 'Kevin Solorio'), DATETIME('now'), DATETIME('now'));
    ```

2.  The team named "Oakland Raiders" is moving to a new city.  It's new name is "Las Vegas Raiders".  Update the database to reflect this.

    Statements run:

    ```sql
UPDATE teams
SET name = 'Las Vegas Raiders'
WHERE teams.name = 'Oakland Raiders';
    ```

3.  The player named "Tony Romo" has retired.  Remove this player and their positions from the database.

    Statements run:

    ```sql
DELETE FROM positions
WHERE player_id = (SELECT players.id FROM players WHERE players.name = 'Tony Romo');
DELETE FROM players
WHERE name = 'Tony Romo';
    ```
