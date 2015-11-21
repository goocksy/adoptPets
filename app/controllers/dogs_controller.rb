class DogsController < ApplicationController

	def index
		@advertiments_dogs = Advertisment.joins(:category).where(categories: {id: 1})
	end

end
