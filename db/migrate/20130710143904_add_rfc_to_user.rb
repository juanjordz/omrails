class AddRfcToUser < ActiveRecord::Migration
  def change
    add_column :users, :rfc, :string
  end
end
