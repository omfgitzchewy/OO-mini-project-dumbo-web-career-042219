require_relative '../config/environment.rb'

aaron = User.new("Aaron")
miles = User.new("Miles")
wei = User.new("Wei")
andy = User.new("Andrew")


lactose = Ingredient.new("Lactose")
chocolate = Ingredient.new("Chocolate")
peanuts = Ingredient.new("Peanuts")
gluten = Ingredient.new("Gluten")

choconut = Recipe.new("Peanut Butter Chocolate Chip Cookies")
	choconut.add_ingredients(chocolate)
	choconut.add_ingredients(peanuts)

pancakes = Recipe.new("Pancakes")
	pancakes.add_ingredients(gluten)

steak = Recipe.new("Sirloin Steak")

penne = Recipe.new("Penne Arrabiatta")
	penne.add_ingredients(gluten)
	penne.add_ingredients(lactose)

dumplings = Recipe.new("Grandma's Homemade Soup Dumplings")
	dumplings.add_ingredients(gluten)


allergy1 = Allergy.new(aaron, lactose)
allergy2 = Allergy.new(andy, peanuts)
allergy3 = Allergy.new(miles, chocolate)
allergy4 = Allergy.new(wei, peanuts)
allergy5 = Allergy.new(aaron, peanuts)
allergy6 = Allergy.new(miles, peanuts)
allergy7 = Allergy.new(aaron, chocolate)

binding.pry
