class MoviesController < ApplicationController
  def index
  	@movies = Imdb::Top250.new.movies
  end

  def show
  	@movie = Imdb::Search.new(params[:name]).movies.first
  	@cast = @movie.cast_members_characters
  end
end
