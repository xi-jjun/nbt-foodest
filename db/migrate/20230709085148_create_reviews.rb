class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :food_image
      t.string :ordered_foods
      t.float :score
      t.integer :absorbed_level, limit: 1
      t.string :one_line_review

      t.references :user, foreign_key: false
      t.references :restaurant, foreign_key: false

      t.timestamps
    end

    add_index :reviews, [:user_id, :restaurant_id], name: 'idx_reviews_on_user_id__restaurant_id'
    add_index :reviews, :ordered_foods
    add_index :reviews, :score
    add_index :reviews, :one_line_review
  end
end
