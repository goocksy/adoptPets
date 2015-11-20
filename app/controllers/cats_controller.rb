class CatsController < ApplicationController
	def index
		@advertiments_cats = Advertisment.joins(:category).where(categories: {name: 'cat'})
	end
end
