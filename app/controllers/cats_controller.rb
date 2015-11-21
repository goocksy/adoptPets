class CatsController < ApplicationController
	def index
		@advertiments_cats = Advertisment.joins(:category).where(categories: {id: 2})
	end
end
