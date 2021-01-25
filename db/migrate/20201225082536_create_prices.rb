class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.references :product, null: false, foreign_key: true
      t.decimal :price
      t.integer :cpu
      t.integer :ram

      t.timestamps
    end
  end
end
