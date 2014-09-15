class CreateBrunchLists < ActiveRecord::Migration
  def change
    create_table :brunch_lists do |t|
      t.string :restaurant
      t.integer :rating
    end
  end
end
