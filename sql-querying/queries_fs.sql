-- FS #1

SELECT
    app_name,
    rating,
    category
FROM analytics
WHERE (rating, category)
    IN (SELECT MAX(rating), 
       category FROM analytics
    WHERE min_installs >= 5E4
    GROUP BY category)
ORDER BY category;

-- FS #2

SELECT *
FROM analytics
WHERE app_name ILIKE '%facebook%';

-- FS #3

SELECT *
FROM analytics
WHERE array_length(genres, 1) >= 2;

-- FS #4

SELECT *
FROM analytics
WHERE genres = '{"Education"}';