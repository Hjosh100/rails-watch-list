class ApplicationController < ActionController::Base

  def movies_not_bookmarked(list)
    Movie.where.not(id: list.bookmarks.pluck(:movie_id))
  end

  helper_method :movies_not_bookmarked
end
