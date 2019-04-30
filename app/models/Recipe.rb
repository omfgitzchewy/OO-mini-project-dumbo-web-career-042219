class Recipe

attr_accessor :ingredients, :name

@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

def self.all
	@@all
end

	def self.most_popular
	end

	def users
		arr = RecipeCard.all.select { |card| card.recipe == self }
		arr.map {|card| card.user_name}
	end

	def ingredients
		arr = RecipeIngredient.all.select { |r_ingredient| r_ingredient.recipe == self }
		arr.map {|r_ingredient| r_ingredient.ingredient	}
	end

	def allergens
		arr = self.ingredients
		Allergy.all.select { |allergy| arr.include?(allergy.ingredient) }
	end

	def add_ingredients(ingredient_array)
		RecipeIngredient.new(ingredient_array, self)
	end

end
