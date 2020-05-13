class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name
      t.string :brand
      t.integer :price
      t.string :description
      t.string :pic1
      t.string :pic2
      t.string :pic3
      t.string :pic4

      t.timestamps
    end
  end
end
