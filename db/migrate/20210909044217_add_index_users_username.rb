class AddIndexUsersUsername < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :username, unique: true
    #Ex:- add_index("admin_users", "username")
  end
end
