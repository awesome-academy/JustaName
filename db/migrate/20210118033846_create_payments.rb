class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.datetime :expires_at
      t.datetime :purchased_at
      t.integer :price_id
      t.string :status
      t.datetime :deleted_at

      t.timestamps
    end
  end
end