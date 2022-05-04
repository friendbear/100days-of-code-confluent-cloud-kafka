CREATE TABLE rated_movies AS
i   Select title,
        SUM(rating)/COUNT(rating) AS avg_rating
    FROM ratings
    INNER JOIN movies
        ON ratings.movie_id = movies.movie_id
    GROUP BY title EMIT CHANGES;