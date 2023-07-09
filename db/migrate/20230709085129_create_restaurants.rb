class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :thumbnail
      t.string :ref_link

      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    add_index :restaurants, :name
    add_index :restaurants, [:latitude, :longitude]
  end
end
