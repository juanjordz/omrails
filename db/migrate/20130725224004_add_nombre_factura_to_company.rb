class AddNombreFacturaToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :nombreFactura, :string
  end
end
