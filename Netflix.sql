CREATE TABLE netflix_data (
    show_id TEXT,
    movie_type TEXT,
    movie_title TEXT,
    director TEXT,
    movie_cast TEXT,
    country TEXT,
    date_added DATE,
    release_year INT,
    rating TEXT,
    duration TEXT,
    listed_in TEXT,
    description TEXT
);

select * from netflix_data;

--How many movies and TV shows are in the dataset
select count(show_id) from netflix_data;
--There are 8077 movies and TV shows collectively



--All unique countries represented on Netflix
select distinct trim(unnest(string_to_array(country,','))) as unique_countries,
count(*) as Total_film
from netflix_data
group by unique_countries
order by Total_film desc;
--There are 123 unique countries and US,India,UK,Canada,France are the top 5


--All movies from India released after 2018
select movie_title from netflix_data
where country='India' and release_year>2018;
--There are 193 movies that fall into this category


--Which type dominates (Movie or TV Show)
select movie_type,count(*) as Film_count
from netflix_data
group by movie_type
order by Film_count desc;
--Movie dominated in the movie type then TV shows,6131 Movie and 2676 TV shows
--Most common ratings (like TV-MA, PG, etc.)
select rating,count(rating) as rating_count
from netflix_data
group by rating
order by rating_count desc;
--TV-MA,TV-14,TV-PG,R,PG-13 are the top ratings

--All titles that contain the word “Love” or “War” in their title
select movie_title from netflix_data
where movie_title ilike '%Love%' or movie_title ilike '%War%';
--There are 278 movies that had love and war in it

--Most frequent themes in categories (listed_in)
select listed_in from netflix_data;
select distinct trim(unnest(string_to_array(listed_in,','))) as Listed_in,count(*) as Listed_count
from netflix_data
group by Listed_in
order by Listed_count desc;
--Drama,International Movie dominated

-- Number of shows added by year (trend over time)
SELECT COUNT(distinct show_id) AS show_count, release_year
FROM netflix_data
GROUP BY release_year
ORDER BY release_year;


---Which year had the highest releases
SELECT COUNT(distinct show_id) AS show_count, release_year
FROM netflix_data
GROUP BY release_year
ORDER BY show_count desc;
--2018 had the highest release

--Recent 5 shows added (by date_added)
select movie_title,date_added
from netflix_data
where date_added is not null
order by date_added desc
limit 5;
--The recent show were added on 24th and 25th September,2021