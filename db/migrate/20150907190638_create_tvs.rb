class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.string :title
      t.text :description
      t.string :published
      t.string :youtube_url

      t.timestamps null: false
    end
  end
end
