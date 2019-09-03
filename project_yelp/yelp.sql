-- (10 pts) Q1: What are the top 20 cities (with state information) with the most businesses on yelp?
-- Expected columns: state, city, business_count

SELECT 
    state, city, COUNT(*) AS business_count
FROM
    yelp_business
GROUP BY state , city
ORDER BY business_count DESC
LIMIT 20;

-- (10 pts) Q2: What are the average stars for top 10 most reviewed restaurants in Toronto? 
-- Expected columns: business_id, review_count, avg_star


SELECT 
    business_id, review_count, stars AS avg_star
FROM
    yelp_business
WHERE
    city = 'Toronto'
ORDER BY review_count DESC
LIMIT 10;

-- (10 pts) Q3: How many users have left reviews but all the reviews are 1 star?
-- Expected columns: user_count


SELECT 
    COUNT(DISTINCT s.user_id) AS user_count
FROM
    (SELECT 
        user_id
    FROM
        yelp_review
    WHERE
        stars = 1) as s;
        
        
-- (15 pts) Q4: Who wrote the second funniest review in this data? 
-- What is his/her name and how many reviews has he written?
-- Expected columns: name, review_count


SELECT 
    a.name, a.review_count
FROM
    (SELECT 
        *
    FROM
        yelp_user
    ORDER BY funny DESC) a
LIMIT 1 , 1;


-- (15 pts) Q5: How many user have left tips to more business than reviews? 
-- That is, for each user in this set, more businesses are getting tips from them than getting review from them.
-- Expected columns: user_count


select count(*) as user_count from 
(select user_id,count(*) as count
from yelp_tip
group by user_id) t1
left join
(select user_id,count(*) as count
from yelp_review
group by user_id) t2
on t1.user_id = t2.user_id
where t1.count > t2.count or (t1.count <> null and t2.count = null);


-- (20 pts) Q6: We define "boring people" as - 
-- users have left reviews but...
-- none of the reviews were marked as useful, funny, or cool... 
-- and he/she has left no tips ever
-- How many "boring people" do we see in the data?

select count(*) from 
yelp_user
where review_count > 0 and 
(useful + funny + cool) > 0 and 
yelp_user.user_id not in (select user_id from yelp_tip);


-- (20 pts) Q7: What is the distribution of reviews per user? 
-- Please generate the histogram of this.
-- What is the distribution look like? How do you describe it?
-- Is mean or median a better representation of the distribution? 
-- Expected columns: review_count, user_count

SELECT FLOOR(review_count/10.00)*10 as review_count, 
       COUNT(*) AS user_count
FROM yelp_user
GROUP BY FLOOR(review_count/10.00)*10
ORDER BY 1;










