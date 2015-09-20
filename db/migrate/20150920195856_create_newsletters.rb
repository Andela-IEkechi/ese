class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.text :content
      t.references :user, index: true
      t.text :title

      t.timestamps null: false
    end
    add_foreign_key :newsletters, :users
  end
end
