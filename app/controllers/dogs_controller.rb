class DogsController < ApplicationController

	def index
		@advertiments_dogs = Advertisment.joins(:category).where(categories: {name: 'dog'})
	end

end
