class HorsesController < ApplicationController
	def index
		@advertiments_dogs = Advertisment.joins(:category).where(categories: {id: 3})
	end
end
