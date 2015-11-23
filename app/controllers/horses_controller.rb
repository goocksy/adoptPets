class HorsesController < ApplicationController
	def index
		@advertiments_dogs = Advertisment.joins(:category).where(categories: {name: 'horse'})
	end
end
