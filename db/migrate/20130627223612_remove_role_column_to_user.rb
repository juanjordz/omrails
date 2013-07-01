class RemoveRoleColumnToUser < ActiveRecord::Migration
  def up
    remove_column :users, :role
  end

  def down
    add_column :users, :role, :int
  end
end
