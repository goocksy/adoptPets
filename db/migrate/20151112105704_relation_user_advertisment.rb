class RelationUserAdvertisment < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :phone, :integer
  	add_column :advertisments, :user_id, :integer
  end
end
