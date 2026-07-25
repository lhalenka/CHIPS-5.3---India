class Movie < ApplicationRecord
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings(ratings_list, sort_by = '')
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all 
    if ratings_list.present?
      #movies with those ratings
      Movie.where(rating: ratings_list).order(sort_by)
  # if ratings_list is nil, retrieve ALL movies
    else
      Movie.all.order(sort_by)
    end
  end
end

