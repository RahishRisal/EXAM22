CREATE TABLE Actor (
    act_id INT(20) PRIMARY KEY AUTO_INCREMENT,
    act_first_name CHAR(30),
    act_last_name CHAR(30),
    act_gender CHAR(30)
);

INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (101, 'James', 'Stewart', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (102, 'Deborah', 'Kerr', 'F');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (103, 'Peter', 'OToole', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (104, 'Robert', 'De Niro', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (105, 'F. Murray', 'Abraham', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (106, 'Harrison', 'Ford', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (107, 'Nicole', 'Kidman', 'F');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (108, 'Stephen', 'Baldwin', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (109, 'Jack', 'Nicholson', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (110, 'Mark', 'Wahlberg', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (111, 'Woody', 'Allen', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (112, 'Claire', 'Danes', 'F');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (113, 'Tim', 'Robbins', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (114, 'Kevin', 'Spacey', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (115, 'Kate', 'Winslet', 'F');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (116, 'Robin', 'Williams', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (117, 'Jon', 'Voight', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (118, 'Ewan', 'McGregor', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (119, 'Christian', 'Bale', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (120, 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (121, 'Dev', 'Patel', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (122, 'Sigourney', 'Weaver', 'F');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (123, 'David', 'Aston', 'M');
INSERT INTO Actor (act_id,act_first_name,act_last_name,act_gender) VALUES (124, 'Ali', 'Astin', 'F');

SELECT 
    *
FROM
    Actor;

CREATE TABLE Movie (
    mov_id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mov_title CHAR(30),
    mov_year INT(20),
    mov_time INT(20),
    mov_lang CHAR(30),
    mov_release_date DATE,
    mov_release_country CHAR(30),
    act_id INT(20),
    role CHAR(30),
    movie_type CHAR(30),
    FOREIGN KEY (act_id)
        REFERENCES Actor (act_id)
);

INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK', 101, 'John Scottie Ferguson', 'Action');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW', 102, 'Miss Giddens', 'Horror');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-11-12', 'UK', 103, 'T.E. Lawrence', 'Adventure');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK', 104, 'Michael', 'War');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'USA', 105, 'Antonio Salieri', 'Action');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK', 106, 'Rick Deckard', 'Thriller');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (907, 'Eyes Wide Shut', 1999, 159, 'English', null, 'UK', 107, 'Alice Harford', 'Mystery');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK', 108, 'McManus', 'Action');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK', 110, 'Eddie Adams', 'Comedy');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK', 111, 'Alvy Singer', 'Thriller');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA', 112, 'San', 'Comedy');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK', 113, 'Andy Dufresne', 'Drama');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK', 114, 'Lester Burnham', 'Horror');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (914, 'American Beauty', 1999, 122, 'English', null, 'UK', 115, 'Rose DeWitt Bukater', 'Action');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK', 116, 'Sean Maguire', 'Drama');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK', 117, 'Ed', 'War');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK', 118, 'Renton', 'Adventure');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'IND', 120, 'Elizabeth Darko', 'Comedy');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK', 121, 'Older Jamal', 'Mystery');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (920, 'Donnie Darko', 2001, 113, 'English', null, 'UK', 122, 'Ripley', 'Horror');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK', 114, 'Bobby Darin', 'Comedy');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK', 109, 'J.J. Gittes', 'Action');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK', 119, 'Alfred Borden', 'Drama');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK', 101, 'Harris', 'Mystery');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (926, 'Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP', 119, 'Joe Jordon', 'Action');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK', 104, 'Garry', 'War');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK', 114, 'Olie Pop', 'Drama');
INSERT INTO Movie (mov_id,mov_title,mov_year,mov_time,mov_lang,mov_release_date,mov_release_country,act_id,role,movie_type) VALUES (925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK', 102, 'Philip Pins', 'Action');
SELECT 
    *
FROM
    movie;

CREATE TABLE Director (
    dir_id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dir_first_name CHAR(30),
    dir_last_name CHAR(30),
    mov_id INT(20),
    review_score INT(20),
    FOREIGN KEY (mov_id)
        REFERENCES movie (mov_id)
);
SELECT 
    *
FROM
    director;
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (201, 'Alfred', 'Hitchcock', 901);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (202, 'Jack', 'Clayton', 902);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (203, 'David', 'Lean', 903);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (204, 'Michael', 'Cimino', 904);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (205, 'Milos', 'Forman', 905);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (206, 'Ridley', 'Scott', 906);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (207, 'Stanley', 'Kubrick', 907);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (208, 'Bryan', 'Singer', 908);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (209, 'Roman', 'Polanski', 909);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (210, 'Paul', 'Thomas Anderson', 910);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (211, 'Woody', 'Allen', 911);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (212, 'Hayao', 'Miyazaki', 912);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (213, 'Frank', 'Darabont', 913);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (214, 'Sam', 'Mendes', 914);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (215, 'James', 'Cameron', 915);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (216, 'Gus', 'Van Sant', 916);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (217, 'John', 'Boorman', 917);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (218, 'Danny', 'Boyle', 918);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (219, 'Christopher', 'Nolan', 919);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (220, 'Richard', 'Kelly', 920);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (221, 'Kevin', 'Spacey', 921);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (222, 'Andrei', 'Tarkovsky', 922);
INSERT INTO Director (dir_id,dir_first_name,dir_last_name,mov_id) VALUES (223, 'Christian', 'Bale', 923);


CREATE TABLE Review_Rating (
    rev_id INT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    rev_name CHAR(30),
    review_score DECIMAL(2 , 1 ),
    num_of_ratings INT(20),
    mov_id INT(20),
    FOREIGN KEY (mov_id)
        REFERENCES movie (mov_id)
);

INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9001, 'Righty Sock', 8.4, 263575, 901);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9002, 'Jack Malvern', 7.9, 20207, 902);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9003, 'Flagrant Baronessa', 8.3, 202778, 903);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9005, 'Alec Shaw', 8.2, 484746, 906);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9006, '', 7.3, null, 924);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9007, 'Victor Woeltjen', 8.6, 779489, 908);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9008, 'Simon Wright', null, 227235, 909);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9009, 'Neal Wruck', 3, 195961, 910);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9010, 'Paul Monks', 8.1, 203875, 911);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9011, '', 8.4, null, 912);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9013, 'Mike Salvati', 7, 862618, 914);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9021, 'Wesley S. Walker', 7.7, 830095, 915);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9014, 'Sasha Goldshtein', 4, 642132, 916);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9015, 'Josh Cates', 7.7, 81328, 925);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9016, 'Krug Stillo', null, 580301, 918);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9017, 'Scott LeBrun', 8.1, 609451, 920);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9018, 'Hannah Steele', 8, 667758, 921);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9019, 'Vincent Cadena', 8.4, 511613, 922);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9020, 'Brandt Sponseller', 6.7, 13091, 923);
INSERT INTO Review_Rating (rev_id,rev_name,review_score,num_of_ratings,mov_id) VALUES (9004, 'Richard Adams', 9.2, 984746, 904);

SELECT 
    *
FROM
    review_rating;

/*2.Write a SQL query to find the actors who played a role in the movie ‘Good Will Hunting’.
Return all the fields of actor table.*/
SELECT 
    *
FROM
    actor
WHERE
    act_id IN (SELECT 
            act_id
        FROM
            movie
        WHERE
            mov_title = 'Good Will Hunting');

/*3.Write a SQL query to find the director who directed a movie that casted a role for 'Eyes Wide Shut'. 
Return director first name, last name, and language of the Movie table.*/
SELECT 
    d.dir_first_name, d.dir_last_name, m.mov_lang
FROM
    director d
        INNER JOIN
    movie m ON d.mov_id = m.mov_id
WHERE
    d.mov_id IN (SELECT 
            mov_id
        FROM
            movie
        WHERE
            mov_title = 'Eyes Wide Shut');
   
            
/*4.Write a SQL query to find count of Movies of which duration more than 2.5 hours (150 min, here in this column all the 
records are in min) for each country. Return released country, total count of movie.*/
SELECT 
    COUNT(*) AS num_movie, mov_release_country, mov_time
FROM
    movie
WHERE
    mov_time > 150
GROUP BY mov_release_country;


/*5.Write a SQL query to find those movies where reviewer is unknown.
Return movie title, year, release date, director name, actor name.*/
SELECT 
    m.mov_title,
    m.mov_release_date,
    d.dir_first_name,
    d.dir_last_name,
    a.act_first_name,
    a.act_last_name
FROM
    review_rating r
        JOIN
    movie m ON r.mov_id = m.mov_id
        LEFT JOIN
    director d ON d.mov_id = r.mov_id
        JOIN
    actor a ON a.act_id = m.act_id
WHERE
    m.mov_id IN (SELECT 
            r.mov_id
        FROM
            review_rating r
        WHERE
            rev_name LIKE '');
   
            

/*6.Write a SQL query to find count of male actor whose movie got more than 25000 number of ratings. 
Return actor name, gender, count of male actor.*/
SELECT 
    a.act_first_name,
    a.act_last_name,
    a.act_gender,
    COUNT(a.act_id)
FROM
    actor a
        JOIN
    movie m ON a.act_id = m.act_id
        JOIN
    review_rating r ON r.mov_id = m.mov_id
WHERE
    r.num_of_ratings > 25000
        AND a.act_gender = 'M'
GROUP BY a.act_first_name;
 

/*7.Write a SQL query to find the lowest rated movies. Return reviewer name, movie title, types,
released dates and number of stars for those movies. */
SELECT 
    r.rev_name AS Reviewer_name,
    m.mov_title,
    m.movie_type,
    m.mov_release_date,
    r.review_score
FROM
    movie m
        INNER JOIN
    review_rating r ON m.mov_id = r.mov_id
WHERE
    r.review_score IN (SELECT 
            MIN(review_score)
        FROM
            review_rating);


/*8.Write a SQL query to find those actors who have directed their movies. Return actor first name, last name, movie title and role.*/
create view v_actor_table_name as
select concat(act_first_name," ", act_last_name) as actor_name, act_id, act_gender from actor;
create view v_director_name_joined as
select CONCAT(dir_first_name, " ", dir_last_name) as director_name, dir_id, mov_id from director;
SELECT 
    a.actor_name,
    m.mov_title,
    m.role,
    d.director_name
FROM
    movie m
        INNER JOIN
    v_actor_table_name a ON m.act_id = a.act_id
        INNER JOIN
    v_director_name_joined d ON m.mov_id = d.mov_id
WHERE
    actor_name IN (director_name);


/*9. Write a SQL query to find the cast list of the movie ‘Slumdog Millionaire’. Return actor name, movie released date, director name and movie type.*/
SELECT 
    a.act_first_name,
    a.act_last_name,
    m.mov_release_date,
    d.dir_first_name,
    d.dir_last_name,
    m.movie_type
FROM
    actor a
        JOIN
    movie m ON a.act_id = m.act_id
        JOIN
    director d ON d.mov_id = m.mov_id
WHERE
    m.mov_title = 'Slumdog Millionaire';

/*10.write a SQL query to find the count of ‘Action’ movies whose rating is more than 5 star and release date in between 1/1/1950 to 1/1/1996.
Return the movie type, count of movies based on each rating star.*/
SELECT 
    m.movie_type,
    r.review_score,
    COUNT(m.mov_id) AS count_based_on_rating_star
FROM
    movie m
        JOIN
    review_rating r ON r.mov_id = m.mov_id
WHERE
    m.movie_type = 'Action'
        AND m.mov_release_date BETWEEN '1958-01-01' AND '1996-01-01'
        AND r.review_score > 5
GROUP BY r.review_score;

/*11. Write a SQL query to find those movies, which have received highest number of stars.
Group the result set on movie title and sorts the result-set in ascending order by movie title. Return movie title type and maximum number of review stars*/

SELECT 
    r.rev_name,
    m.mov_title,
    m.movie_type,
    m.mov_release_date,
    r.num_of_ratings
FROM
    review_rating r
        JOIN
    movie m ON m.mov_id = r.mov_id
WHERE
    r.num_of_ratings = (SELECT 
            MAX(num_of_ratings)
        FROM
            review_rating)
GROUP BY m.mov_title
ORDER BY m.mov_title ASC;

/*12.Write a SQL query to find those years, which produced at least one movie and that, received a 
rating of more than 5 stars (review_score column is indicating all rating in star). 
Sort the result-set in descending order by movie year. Return movie name, year, rating, actor name, gender.*/
SELECT DISTINCT
    m.mov_title,
    m.mov_year,
    r.review_score,
    a.act_first_name,
    a.act_gender
FROM
    Movie m
        JOIN
    Review_rating r ON m.mov_id = r.mov_id
        JOIN
    Actor a ON m.act_id = A.act_id
WHERE
    r.mov_id IN (SELECT 
            r.mov_id
        FROM
            review_rating r
        WHERE
            r.review_score > 5.00)
ORDER BY m.mov_year DESC;


/*1. Write a SQL query to find the movies that have not been reviewed by any reviewer body other than 'Paul Monks'.
 Return movie title.*/
 select mov_title from movie where mov_id in (select mov_id from review_rating where rev_name = 'Paul Monks');
 
/*1. write a SQL query to find those movies that have been released in countries other than the United Kingdom.
 Return movie title, movie year, movie time, and date of release, releasing country.*/
select * from movie where mov_release_country not in (select mov_release_country from movie where 
 

/*2. Write a query in SQL to find the movies in which one or more actors appeared in more than one film.*/
select mov_title, act_id from movie group by mov_title having  act_id in (select act_id from movie group by act_id having count(act_id)>2);


/*3. write a SQL query to find the years in which a movie received a rating of 3 or 4. Sort the result in increasing order on movie year.
4. write a SQL query to find those movies that have at least one rating and received the most stars. Sort the result-set on movie title. Return movie title and maximum review stars.
*/