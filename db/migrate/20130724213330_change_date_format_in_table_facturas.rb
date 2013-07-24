class ChangeDateFormatInTableFacturas < ActiveRecord::Migration
	def self.up
		change_column :facturas, :fechaExpedicion, :datetime
	end

	def self.down
		change_column :facturas, :fechaExpedicion, :date
	end
end
