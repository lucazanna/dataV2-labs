CREATE DATABASE publications;
USE publications;

SHOW TABLES;

# CHALLENGE 1

SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME,  authors.au_fname AS FIRST_NAME, titles.title AS TITLE, publishers.pub_name AS PUBLISHER
FROM titleauthor 
RIGHT JOIN authors
ON titleauthor.au_id = authors.au_id
RIGHT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers
ON titles.pub_id = publishers.pub_id;

SELECT COUNT(*) FROM publications.titleauthor;

# CHALLENGE 2
SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME,  authors.au_fname AS FIRST_NAME, publishers.pub_name AS PUBLISHER, COUNT(titles.title) AS TITLE_COUNT
FROM authors 
LEFT JOIN titleauthor ON titleauthor.au_id = authors.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, publishers.pub_id;

#TOTAL OF 25 BOOKS FOR 23 AUTHORS

# CHALLENGE 3
SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME,  authors.au_fname AS FIRST_NAME, SUM(titles.ytd_sales) AS TOTAL
FROM authors 
LEFT JOIN titleauthor
ON titleauthor.au_id = authors.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 0, 3


# CHALLENGE 4
SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME,  authors.au_fname AS FIRST_NAME, COALESCE(SUM(titles.ytd_sales),0) AS TOTAL
FROM authors 
LEFT JOIN titleauthor
ON titleauthor.au_id = authors.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC

