class ChangeUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
  end
end
