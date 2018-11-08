require 'themoviedb'
require 'dotenv'
 Dotenv.load

class SearchMovie

def authorisation
  Tmdb::Api.key(ENV['KEY_MOVIE'])
end

def perform
  authorisation
  request(movie)
end

  def request(movie)
    @search = Tmdb::Search.new
    @search.resource('movie')
    @search.query(@movie)
    @search.fetch

  end
end
