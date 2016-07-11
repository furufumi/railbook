class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :book_id
      t.text :body
      t.string :user_id

      t.timestamps null: false
    end
  end
end
