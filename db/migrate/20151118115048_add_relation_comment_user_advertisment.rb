class AddRelationCommentUserAdvertisment < ActiveRecord::Migration
  def change
  	add_column :comments, :advertisment_id, :integer
  	add_column :comments, :user_id, :integer
  end
end
