class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :image_url
      t.integer :amount
      t.decimal :price, precision: 8, scale: 4

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
