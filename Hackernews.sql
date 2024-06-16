SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

select sum(score)
from hacker_news;

select user, sum(score)
from hacker_news
group by 1
having sum(score)>200
order by 2 desc;

select (517 + 309 + 304 + 282) / 6366.0;

select user, count(*)
from hacker_news
where url like '%watch?v=dQw4w9WgXcQ'
group by 1
order by 2 desc;

SELECT CASE
   WHEN url LIKE '%github%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nyt.com%' THEN 'New York Times'
   else 'Other'
  END AS 'Source'
FROM hacker_news;

SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;

select timestamp
from hacker_news
limit 10;

SELECT timestamp,
   strftime('%Y-%m-%d %H:%M:%S', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

select strftime('%H', timestamp), avg(score), count(*)
from hacker_news
group by 1
order by 2 desc;

select strftime('%H', timestamp) as Timestamp, round(avg(score)) as Average, count(*) as Count
from hacker_news
where timestamp is not null
group by 1
order by 2 desc;

