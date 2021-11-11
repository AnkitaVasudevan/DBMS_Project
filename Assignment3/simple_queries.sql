--Simple Queries 

-- Select the movies that are Animated. 
SELECT MOVIE_NAME FROM MOVIES WHERE GENRE='ANIMATED';

--How many screens do theatres Inox and PVR each have? 
SELECT NAME_OF_THEATRE,NO_OF_SCREENS FROM THEATRE WHERE THEATRE_NAME='INOX' AND THEATRE_NAME='PVR';

- Retrieve the user IDs of users older than 30 years
SELECT USER_ID FROM USERS WHERE AGE > 30;

- Retrieve the tickets with price greater than 200
SELECT TICKET_ID,PRICE FROM TICKET WHERE PRICE > 200;

- Retrieve the languages of the movies being shown
SELECT LNGUAGE_NAME,MOVIE_NAME FROM LANGUAGES,MOVIES WHERE LANGUAGES.MOVIE_ID = MOVIES.MOVIE_ID;
