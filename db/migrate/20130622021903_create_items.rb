class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :provider_type
      t.string :code
      t.integer :category_id
      t.string :name
      t.integer :price
      t.text :caption
      t.string :url
      t.boolean :tax_exclude
      t.integer :review_count
      t.integer :review_average

      t.timestamps
    end
  end
end
