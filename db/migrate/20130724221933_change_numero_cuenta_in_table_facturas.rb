class ChangeNumeroCuentaInTableFacturas < ActiveRecord::Migration
	def self.up
		change_column :facturas, :numCtaPago, :string
	end

	def self.down
		change_column :facturas, :numCtaPago, :int
	end
end
