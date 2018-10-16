class MovieController < ApplicationController

  def index
    url = "http://..."
    @movies = JSON.parse(open(url).read)
  end
end
