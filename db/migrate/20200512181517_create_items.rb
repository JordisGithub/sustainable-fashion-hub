class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name
      t.integer :price
      t.string :description
      t.string :pic1
      t.string :pic2
      t.string :pic3
      t.string :pic4
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
