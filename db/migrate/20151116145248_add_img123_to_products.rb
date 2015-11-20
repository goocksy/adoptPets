class AddImg123ToProducts < ActiveRecord::Migration
  def change
    add_column :advertisments, :image1, :string
    add_column :advertisments, :image2, :string
    add_column :advertisments, :image3, :string
  end
end
