class Comment < ActiveRecord::Base
	belongs_to :advertisment
	belongs_to :user
end
