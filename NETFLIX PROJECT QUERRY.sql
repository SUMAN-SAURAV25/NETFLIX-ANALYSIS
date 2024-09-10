--DATABASE CREATION:-
CREATE DATABASE NETFLIX_DB;
GO

--STARTED USING DATABASE
USE NETFLIX_DB;
GO

--DATA IMPORTA FROM SYSTEM(CREATED TABLE NETFLIX1 AT IMPORT TIME)

--CHECKING NULL VALUE AND CLEANING OF DATA:-
SELECT * FROM NETFLIX1 
WHERE TYPE IS NULL OR TITLE IS NULL
OR DIRECTOR IS NULL OR COUNTRY IS NULL OR
DATE_ADDED IS NULL OR RELEASE_YEAR IS NULL 
OR RATING IS NULL OR DURATION IS NULL OR LISTED_IN IS NULL;
GO

--DATA CLEANING 
 DELETE FROM NETFLIX1 WHERE 
 TYPE IS NULL OR TITLE IS NULL
OR DIRECTOR IS NULL OR COUNTRY IS NULL OR
DATE_ADDED IS NULL OR RELEASE_YEAR IS NULL 
OR RATING IS NULL OR DURATION IS NULL OR LISTED_IN IS NULL;
GO
select * from netflix1 where title='????' --FIND TWO ROWS(SHOW ID= s4915,s7102)
delete from netflix1 where title='????' -- DELETED BOTH ROWS

select * from netflix1 where title='??????'--FIND ONE ROW(SHOW ID =s8795)
delete from netflix1 where title='??????' --DELETED ROW

select * from netflix1 where title='????????' --FIND ONE ROW(SHOW ID=s6178)
delete from netflix1 where title='????????' --DELETED ROW
GO



--DATA EXPLORATION:-

SELECT rating,count(type) as C ----RATING ON NETFLIX
      from netflix1 group by rating 
      order by c desc; 
GO 


SELECT COUNT(*) FROM NETFLIX1; GO--TOTAL CONTENT COUNT


SELECT TYPE, COUNT(*) AS TOTAL_NO  --Count the number of Movies and TV Shows
    FROM NETFLIX1 GROUP BY TYPE; 
GO 


SELECT TOP(1) listed_in, COUNT(listed_in) AS GENERES  --MOST COMMON GENRES
   FROM NETFLIX1 
    GROUP BY listed_in 
     ORDER BY GENERES DESC;
GO 


SELECT top(10) director, title ,COUNT(*) as total_No --Top 10 Directors with the Most Titles
    FROM NETFLIX1
    group by title,director 
    order by total_No desc; 
GO


SELECT RATING, COUNT(TITLE) TOTAL_NO -- TOP 10 frequency of movies and TV Shows on Netflix.

    FROM NETFLIX1 
     GROUP BY RATING 
      ORDER BY TOTAL_NO DESC;
GO


SELECT TOP(10) COUNTRY, COUNT(*) AS CONTENT ----Top 10 countries with most content on Netflix
   FROM NETFLIX1 GROUP BY COUNTRY 
     ORDER BY CONTENT DESC; 
GO


SELECT top(10) type,listed_in , COUNT(type) AS GENERES --Top 10 TV Shows genres
   FROM NETFLIX1 
     group by listed_in,type having type='tv show' 
      order by GENERES desc;
GO  


SELECT top(10) type,listed_in , COUNT(type) AS GENERES --Top 10 popular movie genres
   FROM NETFLIX1 
    group by listed_in,type having type='MOVIE' 
    order by GENERES desc; 
GO 


SELECT TOP(15) DIRECTOR,COUNT(*) AS TOTAL_N --Top 15 directors across Netflix with high frequency of movies and shows.
     FROM NETFLIX1 
	    GROUP BY DIRECTOR HAVING DIRECTOR !='NOT GIVEN'
          ORDER BY TOTAL_N DESC; 
GO 


