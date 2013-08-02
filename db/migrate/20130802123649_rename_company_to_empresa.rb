class RenameCompanyToEmpresa < ActiveRecord::Migration
  def change
    rename_table :companies, :empresas
  end
  def up
  end

  def down
  end
end
