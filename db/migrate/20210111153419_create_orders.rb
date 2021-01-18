class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :name
      t.string :phone
      t.string :province
      t.string :district
      t.string :address
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
