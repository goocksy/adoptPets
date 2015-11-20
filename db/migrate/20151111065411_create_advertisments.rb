class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :tittle
      t.string :comment
      t.float :price

      t.timestamps null: false
    end
  end
end
