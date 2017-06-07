class CreateOrders < ActiveRecord::Migration[5.1]
  def change
	  	create_table :orders do |p|
	  		p.text :name
	  		p.text :phone
	  		p.text :adress
	  		p.text :orderlist
	  		p.timestamps
	    end
  end
end
