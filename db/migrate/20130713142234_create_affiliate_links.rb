class CreateAffiliateLinks < ActiveRecord::Migration
  def change
    create_table :affiliate_links do |t|
      t.string :title
      t.string :url
      t.datetime :publish_end_at

      t.timestamps
    end
  end
end
