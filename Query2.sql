
 
//Answer 1:- All are males with no family members and dead except one

SELECT Last,First,Gender,Age,Class,Fare,Embarked,Survived 
FROM titanic.titanic1
WHERE Fare = '0';

//Answer 2:- 
SELECT count(First) AS No_of_Married_Women 
FROM titanic.titanic1 
WHERE first LIKE 'Mrs.%' AND age > 50 AND Embarked = 'Cherbourg';

//Answer 3:-

SELECT City, max(Avg_Paying) AS Highest_Paying
FROM (SELECT Embarked AS City, AVG(fare) AS Avg_Paying
      FROM titanic.titanic1
      GROUP BY fare) AS Max ;

//Answer 4:-

SELECT Last AS Most_Common_Last_Name, COUNT(Last) AS No_of_Passengers 
FROM  titanic.titanic1
GROUP BY Last
ORDER BY No_of_Passengers DESC
LIMIT 1;

//Answer 5:-

SELECT Class, count(*) * 100.0 / (SELECT count(*)  FROM titanic.titanic1) AS Survived_Rate
FROM titanic.titanic1
WHERE Survived = 'yes'
GROUP BY Class;	







