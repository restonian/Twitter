#From the Pablo Barbera PDF Scaping Twitter and Web Data Using R

#Chunk 1 Load packages and register cert
PrepareTwitter()
load("twitter authentication.Rdata")
registerTwitterOAuth(Cred)
##################################################################

#Chunk 2 get tweets, save file and parse 
filterStream(file.name = "tweets_keyword.json", track = c("obama", "biden"),
             timeout = 180, oauth = Cred)
tweets <- parseTweets("tweets_keyword.json", verbose = TRUE)

#chunk 3 clean tweets

clean.tweets <- function(text){
  words <- removePunctuation(text)
  words <- wordStem(words)
  words <- str_split(text, " ")
  return(words)
}

#i made a change

#another change here and here 


#okay, here is my third change...can you see me ?

#push this to github without entering username/password