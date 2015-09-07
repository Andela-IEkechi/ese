class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :image
      t.date :release_date
      t.string :author
      t.integer :cost

      t.timestamps null: false
    end
  end
end
