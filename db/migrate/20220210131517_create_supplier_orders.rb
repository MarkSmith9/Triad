class CreateSupplierOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_orders do |t|
      t.references :supplier, null: false, foreign_key: true
      t.string :delivery_address
      t.string :postcode
      t.integer :amount
      t.date :deliver_date
      t.integer :status

      t.timestamps
    end
  end
end
