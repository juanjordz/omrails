class AddRfcToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :rfc, :string
  end
end
