# -*- coding: utf-8 -*-

class Item < ActiveRecord::Base
  attr_accessible :caption, :name, :price, :provider_type, :review_average, :review_count, :tax_exclude, :url, :code, :category_id

  belongs_to :category
  has_and_belongs_to_many :features
  has_many :images, :class_name => 'ItemImage'

  default_scope order('updated_at DESC').limit(30)
  scope :keyword_includes, lambda { |keyword| where("name like ? OR caption like ?", "%#{keyword}%", "%#{keyword}%") }

  def new?
    created_at.to_date > Date.today - 2
  end
end
