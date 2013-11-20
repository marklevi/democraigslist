class Post < ActiveRecord::Base
  belongs_to :categories
  attr_accessible :title, :description, :price

end
