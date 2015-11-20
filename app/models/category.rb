class Category < ActiveRecord::Base
	has_many :advertisments

	validates :name, presence: true

end
