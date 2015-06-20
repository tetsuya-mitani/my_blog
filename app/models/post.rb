class Post < ActiveRecord::Base
  paginates_per 5

  belongs_to :category
end
