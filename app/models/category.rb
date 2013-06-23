class Category < ActiveRecord::Base
  attr_accessible :name, :order, :identifier

  has_many :items
end
