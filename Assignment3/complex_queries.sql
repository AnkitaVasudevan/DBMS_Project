--COMPLEX QUERIES :

-- List the booking ID, the number of tickets and mode of payment of users who used Debit Card for the payment.

SELECT B.booking_id, B.no_of_tickets, M.payment
FROM booking AS B, make_booking AS M
WHERE B.booking_id = M.bid AND payment='DEBITCARD'
ORDER BY no_of_tickets;

-- List the name of the movies, their genre and languages which were released after 16th of September 2021.

SELECT M.movie_name, M.genre, L.language_name
FROM movies AS M, languages AS L 
WHERE L.movie_id = M.movie_id AND M.release_date > '2021-09-16'
ORDER BY genre;

-- What is the cost of the shows screened on 12th September 2021?

SELECT S.SHOW_ID, S.SHOW_DATE , B.COST FROM SHOW AS S, BOOKING AS B WHERE S.SHOW_ID=B.SHOW_ID AND SHOW_DATE='2021-09-12'

-- Get all show_id and theatre names in all regions

SELECT SHOW_ID, THEATRE_NAME, city from show, theatre, region where show.movie_id = theatre.movie_id and theatre.theatre_id = region.theatre_id;

-- Retreive the show_id for Animated movies.

SELECT SHOW_ID, MOVIE_NAME FROM SHOW . MOVIES
WHERE SHOW.MOVIE_ID = MOVIES.MOVIE_ID AND GENRE='ANIMATED';