#STEP 1 AND 2

SELECT titles.title_id AS TitleID, authors.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance, 
SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN authors
ON authors.au_id = titleauthor.au_id
INNER JOIN sales
ON titles.title_id = sales.title_id
GROUP BY TitleID, AuthorID;

# STEP 3
SELECT AuthorID, ROUND(SUM(Advance + sales_royalty)) AS Profit
FROM (
SELECT titles.title_id AS TitleID, authors.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance, 
SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN authors
ON authors.au_id = titleauthor.au_id
INNER JOIN sales
ON titles.title_id = sales.title_id
GROUP BY TitleID, AuthorID
) summary
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3;

# CHALLENGE 2
CREATE TEMPORARY TABLE summary
SELECT titles.title_id AS TitleID, authors.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance, 
SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN authors
ON authors.au_id = titleauthor.au_id
INNER JOIN sales
ON titles.title_id = sales.title_id
GROUP BY TitleID, AuthorID;

SELECT AuthorID, ROUND(SUM(Advance + sales_royalty)) AS Profit
FROM summary
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3;

# CHALLENGE 3
CREATE TABLE most_profiting_authors
SELECT *
FROM summary;

SELECT *
FROM most_profiting_authors


