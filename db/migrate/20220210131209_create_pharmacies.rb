class CreatePharmacies < ActiveRecord::Migration[7.0]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.string :password_digest
      t.string :deliver_address
      t.string :postcode
      t.integer :stock
      t.string :email

      t.timestamps
    end
  end
end
