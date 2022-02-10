class CreatePharmacyOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmacy_orders do |t|
      t.references :pharmacy, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true
      t.integer :amount
      t.integer :status
      t.string :delivery_address
      t.string :postcode

      t.timestamps
    end
  end
end
