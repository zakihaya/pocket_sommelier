class Feature < ActiveRecord::Base
  attr_accessible :include_words, :name

  has_and_belongs_to_many :items
end
