class CreateLaptops < ActiveRecord::Migration[6.0]
  def change
    create_table :laptops do |t|
      t.string :title
      t.text :description
      t.string :price
      t.integer :brand

      t.timestamps
    end
  end
end
