# Ruckus Movie Database (RMDB) 🎬
----------------
Ruckus Movie Database (RMDB) was a project created in an attempt to replicate the presentation and functionality of Rottentomatoes.com.


## 🍿 API Integration
----------------------
RMDB uses [The Real Movie Database](https://www.themoviedb.org/?language=en)'s API to pull movie posters, cast, directors, box office gross revenue, overview, and other details. This API is at the core of our application, allowing us to pull large amounts of information without having to store this information within RMDB's databases. The API also allows us to pull actor and actress details, including overviews and portrait photos. None of the individual movies are initialized in our database until a user creates a review for given movie. Even then, we initialize a primary key for a movie that corresponds with the movie's unique API key. If you are interested in replicating this project, I would highly recommend using this wonderful API.


## 🍿 User Story
-----------------------
#### 📽 Movie Browsing
-----------------------
A user is first greeted with movies that are currently in theaters and is ranked by top grossing. In designing the layout of the website, we aimed to replicate the functionality of Netflix; scrolling movie posters that link to a movie description page.
![Movie Browsing](https://media.giphy.com/media/VdcwKFEm63z1K/giphy.gif)


#### 📽 Genre Browsing
-----------------------
Aside from browsing the latest releases, a user can browse movies organized by genre.
![Categories](https://media.giphy.com/media/fpuClQYSzQPXq/giphy.gif)


#### 📽 Actor Browsing
-----------------------
Users can also browse movie actors and actresses. All actors and actresses are ordered by those that have been searched most frequently on The Real Movie Database.
![Actors](https://media.giphy.com/media/yIPkQJxerWiwo/giphy.gif)


#### 📽 Movie Ratings
-----------------------
A user can rate each movie between one and five stars. The ratings system is dynamic in that it remains a low orange glow if one star, unlit stars if between two and four stars, and fully lit and tilted stars if five stars are selected. Once submit is clicked, the database takes the rating and assigns it to the movie.
![Movie Rating](https://media.giphy.com/media/G5NSVkZFN6aMU/giphy.gif)


#### 📽 Movie Review
-----------------------
Each user can create reviews, on top of ratings. All ratings can be upvoted or down voted according to other users opinions.  
![Movie Review](https://media.giphy.com/media/Wm4YkMGRS9iw0/giphy.gif)


#### 📽 Actor Details and Ratings
-----------------------
Each actor has a detail page that includes biographical information, as well as the movies that they have starred in. Users can also provide ratings for Actors.  
![Actor Details](https://media.giphy.com/media/F6OpyNiBtOdd6/giphy.gif)


#### 📽 Universal Search
-----------------------
The search bar at the top of the page is a universal search. Users can search actors, actresses, and movies. It also operates as a fuzzy search, allowing to search the movies that an actor might have acted in.
![Universal Search](https://media.giphy.com/media/fc2HjXkVcPxZK/giphy.gif)


## 🍿 API Integration
----------------------
RMDB uses [The Real Movie Database](https://www.themoviedb.org/?language=en)'s API to pull movie posters, cast, directors, box office gross revenue, overview, and other details. This API is at the core of our application, allowing us to pull large amounts of information without having to store this information within RMDB's databases. The API also allows us to pull actor and actress details, including overviews and portrait photos. None of the individual movies are initialized in our database until a user creates a review for given movie. Even then, we initialize a primary key for a movie that corresponds with the movie's unique API key. If you are interested in replicating this project, I would highly recommend using this wonderful API.


## Team
------------------
⭐️ Dom C. ([thisisDom](https://github.com/thisisDomssdasdaw))

⭐️ Peter M. ([pentaquant](https://github.com/pentaquant))

⭐️ Nick K. ([intell-gent](https://github.com/intell-gent))

⭐️ Jun O. ([Jun-Ota](https://github.com/Jun-Ota))
