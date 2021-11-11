--NESTED QUERIES 

-- List the theatres in a region with pincode as 448822.

SELECT theatre_name FROM theatre WHERE theatre_id IN (SELECT theatre_id FROM Region WHERE pincode = '448822');

-- List the users who have booked more than 3 tickets.

SELECT name FROM users WHERE user_id IN (SELECT user_id FROM booking WHERE no_of_tickets > 3);

-- Which city has the maximum number of theatres? Return the city name along with it's pincode.

SELECT CITY,PINCODE FROM REGION WHERE NO_OF_THEATRES=(SELECT MAX(NO_OF_THEATRES) FROM REGION); 

-- Currently how many movies are being shown across all theatres?

SELECT COUNT(*) FROM (SELECT DISTINCT MOVIE_NAME FROM MOVIES) AS COUNT_DISTINCT_MOVIES;

-- List the movies and their release dates which run after 5 P.M.

SELECT M.movie_name, M.release_date, S.time from movies as M, show as S WHERE M.movie_id IN (SELECT S.movie_id FROM show WHERE S.time > 1700);


