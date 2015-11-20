class AddRelationCategoryAdvertisment < ActiveRecord::Migration
  def change
  	add_column :advertisments, :category_id, :integer
  end
end
