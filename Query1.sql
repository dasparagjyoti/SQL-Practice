//Answer1:-

 SELECT team,MAX(goalsfor)/(goalsagainst) AS highest_ratio FROM worldcup.teams  
 GROUP BY(team)
 ORDER BY(highest_ratio) DESC;

//Answer2:-
  SELECT AVG(passes) AS average_number FROM worldcup.players
  WHERE position = 'defender';
     
    SELECT AVG(passes) AS average_number FROM worldcup.players 
    WHERE position = 'forward';

//Answer3:-
  SELECT surname AS player_name FROM worldcup.players 
  WHERE team LIKE '%ia%' AND minutes < 200 AND passes > 100;

//Answer4:-
SELECT P.team, P.avg_passes FROM 
(SELECT team, AVG(passes/minutes) AS avg_passes FROM worldcup.players GROUP BY team) AS P WHERE avg_passes = (SELECT MAX(p1.avg_passes)from (SELECT team, AVG(passes/minutes) as avg_passes from players group by team) as P1);

//Answer5:-
  SELECT count(team) AS no_of_players FROM worldcup.teams WHERE ranking BETWEEN 1 and 9 OR
      (SELECT count(surname) FROM worldcup.players WHERE minutes > '350');



  SELECT count(*) AS no_of_players
	   FROM worldcup.players B
       INNER JOIN worldcup.teams C ON B.team = C.team
       WHERE ranking BETWEEN 1 AND 9  AND minutes > 350
       GROUP BY B.team;

