class CreateCustomerPharmacyOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_pharmacy_orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :pharmacy, null: false, foreign_key: true
      t.date :date
      t.boolean :collected

      t.timestamps
    end
  end
end
