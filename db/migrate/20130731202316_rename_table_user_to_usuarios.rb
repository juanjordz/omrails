class RenameTableUserToUsuarios < ActiveRecord::Migration
  def change
    rename_table :users, :usuarios
  end

  def up
  end

  def down
  end
end
