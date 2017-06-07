class AddProducts < ActiveRecord::Migration[5.1]
  def change
  	Product.create(
  		:title => 'Pancakes', 
  		:desc => 'tasty sugar pancakes with berries, choco and vanilla.js', 
  		:price => 12,	
  		:netto => 350, 
  		:is_breakfast => true,	
  		:is_best_offer => false, 
  		:path_to_image => '/images/breakfast.jpg',
  		:path_to_image_sm => '/images/breakfast_sm.jpg'
  	)

  	Product.create(
  		:title => 'Sushi', 
  		:desc => 'Delicious american-japan rolls with caviar and shrimps', 
  		:price => 18, 
  		:netto => 300, 
  		:is_breakfast => false, 
  		:is_best_offer => true, 
  		:path_to_image => '/images/sushi.jpg',
  		:path_to_image_sm => '/images/sushi_sm.jpg'
  	)

	  Product.create( 
		  :title => 'Dinner', 
		  :desc => 'Perfect full folks dinner with grilled ribs and potatoes', 
		  :price => 25, 
		  :netto => 450, 
		  :is_breakfast => false, 
		  :is_best_offer => false, 
		  :path_to_image => '/images/dinner.jpg',
		  :path_to_image_sm => '/images/dinner_sm.jpg'
	  )

	  Product.create( 
		  :title => 'Soup', 
		  :desc => 'Chefs Tomato soup', 
		  :price => 8, 
		  :netto => 300, 
		  :is_breakfast => false, 
		  :is_best_offer => true, 
		  :path_to_image => '/images/soup.jpg',
		  :path_to_image_sm => '/images/soup_sm.jpg'
		)

	  Product.create( 
		  :title => 'Steak', 
		  :desc => 'Medalion steak of superb meat', 
		  :price => 45, 
		  :netto => 400, 
		  :is_breakfast => false, 
		  :is_best_offer => false, 
		  :path_to_image => '/images/steak.jpg',
		  :path_to_image_sm => '/images/steak_sm.jpg'
	  )

	  Product.create( 
		  :title => 'Canape', 
		  :desc => 'Fish made canapes', 
		  :price => 15, 
		  :netto => 250, 
		  :is_breakfast => false, 
		  :is_best_offer => true, 
		  :path_to_image => '/images/canapes.jpg',
		  :path_to_image_sm => '/images/canape_sm.jpg'
	  )
	end
end
