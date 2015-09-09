class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    User.create!(
        name: 'Ese',
        email: 'esewalter@gmail.com',
        admin: true,
        password: 'password1'
    )

    User.create!(
        name: 'Ikenna',
        email: 'luccy559slim@gmail.com',
        admin: true,
        password: 'password1'
    )
  end
end
