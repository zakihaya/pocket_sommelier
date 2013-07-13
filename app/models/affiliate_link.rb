class AffiliateLink < ActiveRecord::Base
  attr_accessible :publish_end_at, :title, :url

  default_scope -> { where('publish_end_at is NULL OR publish_end_at > ?', Time.now) }
end
