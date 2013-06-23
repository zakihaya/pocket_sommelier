class Item < ActiveRecord::Base
  attr_accessible :caption, :name, :price, :provider_type, :review_average, :review_count, :tax_exclude, :url, :code, :category_id

  belongs_to :category
  has_and_belongs_to_many :features
  has_many :images, :class_name => 'ItemImage'

  default_scope order('updated_at DESC').limit(30)
end
