class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :password_digest
      t.string :name
      t.string :deliver_address
      t.string :postcode
      t.integer :stock
      t.string :phone_number

      t.timestamps
    end
  end
end
