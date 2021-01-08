class AddProductIdToRate < ActiveRecord::Migration[6.0]
  def change
    add_column :rates, :product_id, :integer
  end
end
