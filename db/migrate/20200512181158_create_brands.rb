class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.integer :sustainability_rating
      t.string :sustainability_rating_description
      t.integer :planet_rating
      t.string :planet_rating_details
      t.integer :people_rating
      t.string :people_rating_details
      t.integer :animals_rating
      t.string :animals_rating_details

      t.timestamps
    end
  end
end
