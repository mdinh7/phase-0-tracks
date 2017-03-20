restaraunt = { 
'Location One' => {
	'Appetizers' => ['Calmari', 'Truffle Fries', 'Mini Lamb Sliders'],
	'Salads' => ['Caesar', 'Kale', 'BBQ Chicken', 'Potato'],
	'Main Dishes' => ['Kobe Beef Burger', 'Pesto Pasta with Chicken', 'Lobster and Steak', 'Fish and Chips'],
	'Dessert' => ['Gelato', 'Lava Cake', 'Giant Cookie', 'Apple Pie']
	},
'Location Two' => {
	'Appetizers' => ['Calmari', 'Truffle Fries', 'Lettuce Wrap'],
	'Salads' => ['Caesar', 'Kale', 'BBQ Chicken', 'Shrimp'],
	'Main Dishes' => ['Kobe Beef Burger', 'Alfredo Pasta with Chicken', 'Lobster and Steak', 'Fish and Chips'],
	'Dessert' => ['Gelato', 'Lava Cake', 'Giant Cookie', 'Cherry Pie']
	},
'Location Three' => {
	'Appetizers' => ['Calmari', 'Tortilla Chips', 'Mini Lamb Sliders'],
	'Salads' => [ 'Caesar', 'Spinach', 'BBQ Chicken', 'Potato'],
	'Main Dishes' => [ 'Kobe Beef Burger', 'Pesto Pasta with Chicken', 'Shrimp and Steak', 'Fish and Chips'],
	'Dessert' => ['Frozen Yogurt', 'Lava Cake', 'Giant Cookie', 'Apple Pie']
	}
}


p restaraunt['Location One']['Dessert'][3].upcase

p restaraunt['Location Two']['Appetizers'].reverse

p restaraunt['Location Three']['Main Dishes'][2].downcase

p restaraunt['Location One']['Salads'][0]