## yelp_data_project

Perform analysis on open source yelp data

download gigabyte size files [here](https://drive.google.com/drive/folders/1AUt-vC1rkNKDnFuDkywNtTugCzAtwWmw) and load them to your server

-- Q1: What are the top 20 cities (with state information) with the most businesses on yelp?-- Expected columns: state, city, business_count
-- Q2: What are the average stars for top 10 most reviewed restaurants in Toronto? -- Expected columns: business_id, review_count, avg_star
-- Q3: How many users have left reviews but all the reviews are 1 star?-- Expected columns: user_count
-- Q4: Who wrote the second funniest review in this data? -- What is his/her name and how many reviews has he written?-- Expected columns: name, review_count
-- Q5: How many user have left tips to more business than reviews? -- That is, for each user in this set, more businesses are getting tips from them than getting review from them.-- Expected columns: user_count
-- Q6: We define "boring people" as - -- users have left reviews but...-- none of the reviews were marked as useful, funny, or cool... -- and he/she has left no tips ever-- How many "boring people" do we see in the data?
-- Q7: What is the distribution of reviews per user? -- Please generate the histogram of this.-- What is the distribution look like? How do you describe it?-- Is mean or median a better representation of the distribution? -- Expected columns: review_count, user_count
