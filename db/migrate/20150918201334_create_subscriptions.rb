class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :sub_status
      t.string :sub_category
      t.references :user, index: true
      t.string :sub_fee

      t.timestamps null: false
    end
    add_foreign_key :subscriptions, :users
  end
end
