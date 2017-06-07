class CreateProducts < ActiveRecord::Migration[5.1]
  def change
  	create_table :products do |p|
  		p.text :title
  		p.text :desc
  		p.decimal :price
  		p.decimal :netto
  		p.boolean :is_breakfast
  		p.boolean :is_best_offer
  		p.string :path_to_image 
  		p.string :path_to_image_sm 
  		p.timestamps
  	end
 	end
end
