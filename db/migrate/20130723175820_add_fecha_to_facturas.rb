class AddFechaToFacturas < ActiveRecord::Migration
  def change
    add_column :facturas, :fechaExpedicion, :date
  end
end
