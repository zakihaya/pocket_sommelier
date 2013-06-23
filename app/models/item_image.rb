class ItemImage < ActiveRecord::Base
  belongs_to :item
  attr_accessible :order, :url
end
