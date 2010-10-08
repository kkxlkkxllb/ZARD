class Category < ActiveRecord::Base
  has_many :songs
end
