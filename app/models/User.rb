class User

attr_accessor :name

@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def recipes
		RecipeCard.all.select { |card| card.user == self }
	end

	def add_recipe_card(recipe, rating)
	# Time.now
		RecipeCard.new(recipe, Time.now, rating, self)
	end

	def declare_allergy(ingredient)
		Allergy.new(self, ingredient)
	end

	def allergens
		arr = Allergy.all.select {|allergy| allergy.user == self}
		arr.map {|allergy| allergy.ingredient }
	end

	def safe_recipes
		arr = self.allergens
		arr2 = Recipe.all.map {|recipe| recipe.ingredients}
		arr.select do |allergen|
			arr2.include?(allergen)
	end
	end

	def top_three_recipes
		arr = RecipeCard.all.select { |recipe| recipe.user == self }
		arr.sort_by(&:rating)[-3..-1]
	end

	def most_recent_recipe
		arr = RecipeCard.all.select { |recipe| recipe.user == self }
		arr.sort_by(&:date)[-1]
	end

end
