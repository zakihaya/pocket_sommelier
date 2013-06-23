class CreateFeatureItem < ActiveRecord::Migration
  def up
    create_table :features_items, :id => false do |t|
      t.references :item
      t.references :feature
    end
  end

  def down
    drop_table :features_items
  end
end
