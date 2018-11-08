class MoviesController < ApplicationController
  def search
    @search_movie = SearchMovie.new.request(params[:movie])
    @titles = []
    @date = []
    @director = []
    @image = []
    if @search_movie == nil
      render 'search'
    else
      @movie.each do |m|
          @titles << m['title']
          @date << m['release_date']
          @director << Tmdb::Movie.crew(m['id']).find {|d| d['job'] == "Director"}['name']
          @image << "http://image.tmdb.org/t/p/w185#{m['poster_path']}"
            rescue StandardError => e
              @director << "x"
      end
    end
  end
end
