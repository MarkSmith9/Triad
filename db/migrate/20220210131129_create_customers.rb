class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.string :nhs_number
      t.string :postcode
      t.string :email

      t.timestamps
    end
  end
end
