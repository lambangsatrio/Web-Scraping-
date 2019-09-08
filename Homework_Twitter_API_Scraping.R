# Title     : Twitter API Scraping
# Objective : To Scrap Twitter with API
#Author     : Lambang Satrio Nuli Raharjo

# Step 1: Install and load rtweet package 

install.packages("rtweet")
library(rtweet)

install.packages("devtools")
library(devtools)
install_github("mkearney/rtweet")
library(rtweet)

# Step 2: API Authorization 


# With access token / secret
token <- create_token(consumer_key = "CT9FEEnqEW7icvOAJDqCH96UC",consumer_secret = "asivZsLl3AyoPkrD4sidkAYlqC7ENl1OZd0Y27o9JHYxVR83Ja",access_token = "103788928-BDoFTNjQHhfaHGBGpcHtW1xOZxktSB5fLiKOYSTQ",access_secret = "s0PR0o09O3welhqlD1vonSflQK6HAXgoUCEpAq3jdnovJ")

# Step 3: Crawling Data Twitter 

# Define your twitter username 
my_username='lambangsatrio'

# Setelah proses otentikasi berhasil, kita siap untuk “menambang” data (crawling) dari Twitter. Untuk kepeluan ini, rtweet mengemas berbagai fungsi yang cukup lengkap, di antaranya:
#   
#   search_tweets() : mencari tweet dengan kata kunci tertentu
# lookup_users() : menampilkan data detail dari satu atau lebih user(s)
# get_timelines() : menampilkan status/tweet yang pernah diposting oleh user tertentu aka timeline
# get_followers() : menampilkan list followers dari user tertentu
# get_friends() : menampilkan list fiends/followings atau yang di-follow user tentu
# dan masih banyak yang lain seperti untuk menampilkan retweet, siapa yang me-retweet, mendapatkan list favorite, menampilkan trending topics, cleansing tweet, dan juga ekspor data ke file csv.

# find 1000 tweets with keywords: "kota jakarta"
tweet <- search_tweets(q = "#KPAI", n = 1000)

# to know the column names of tweet 
colnames(tweet)
dim(tweet)

# let's take a look at three columns
k <- tweet[,c("created_at", "screen_name", "text")]

#Print k
print(k)

#export to csv
write.csv(k, "KPAI.txt")



