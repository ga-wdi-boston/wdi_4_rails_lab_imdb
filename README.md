## IMDB Rails app

1. Create a rails app named imdb_movies

	_You know the how to create a Rails app?_

	_The DB for this app is postgresql and it has no (default) testing framework_

	_rails --help is your friend_

2. Create a controller for movies.
3. Create an index action in the movies controller
4. Create a route for this action.
5. Use the [IMDB Ruby gem](https://github.com/ariejan/imdb). Goes in your Gemfile.
	_Don't forget to run bundle install_
	
6. Make a call to get the top 250 movies in the index action.
  <code>@movies = Imdb::Top250.new.movies  </code>

7. Create a view, erb file, to show all these movies. Use  a HTML description list to show ONLY the titles of each movie.
8. Create a show action in the movies controller.
9. Add a route to this show action. The route will take a 'name' parameter.
10. Use this name parameter to find info from IMDB about this movie.
	 <code>@movie = Imdb::Search.new(params[:name]).movies.first</code>
	 
11. Create a show view to view the movie's title, year and length (in minutes).


#### Extra credit
Show the cast members for each movie. Use a new controller named Casts with index and show actions.




