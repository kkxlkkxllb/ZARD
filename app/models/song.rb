class Song < ActiveRecord::Base
  belongs_to :category
  validates :title,:presence => true,:uniqueness => {:scope => :category_id }
end
