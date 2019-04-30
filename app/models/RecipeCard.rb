class RecipeCard

attr_accessor :date, :rating, :recipe, :user

@@all = []

	def initialize(recipe, date, rating, user)
		@date = date
		@rating = rating
		@user = user
		@recipe = recipe
		@@all << self
	end

	def self.all
		@@all
	end

end
