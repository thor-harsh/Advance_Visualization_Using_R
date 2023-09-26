getwd()

movies<-read.csv("P2-Movie-Ratings.csv")
movies
head(movies)
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating",'BudgetMillions',
                    "Year")
tail(movies)
str(movies)
summary(movies)
factor(movies$Year)
movies$Year<-factor(movies$Year)
summary(movies)
str(movies)

#-----------------ggplot2

library(ggplot2)
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))


#add geometry
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre)) + 
  geom_point()

#1st important plot

ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre,size=BudgetMillions)) + 
  geom_point()

p<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre,size=BudgetMillions))

#point
p + geom_point()

#lines
p + geom_line()


#multiple layers
p + geom_line() + geom_point()

p + geom_point() + geom_line()

#------------Overriding Aesthetics


