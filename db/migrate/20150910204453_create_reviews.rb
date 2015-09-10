class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.text :content
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
  end
end
