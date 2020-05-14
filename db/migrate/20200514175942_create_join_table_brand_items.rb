class CreateJoinTableBrandItems < ActiveRecord::Migration[6.0]
  def change
    create_join_table :Brands, :Items do |t|
      t.index [:brand_id, :item_id]
      t.index [:item_id, :brand_id]
    end
  end
end
