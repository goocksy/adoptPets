class AddImage1ToAdvertisments < ActiveRecord::Migration
  def change
    add_column :advertisments, :image, :string
  end
end
