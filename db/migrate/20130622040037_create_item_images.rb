class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|
      t.references :item
      t.string :url
      t.integer :order

      t.timestamps
    end
    add_index :item_images, :item_id
  end
end
