require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "should create customer" do
    visit customers_url
    click_on "New customer"

    fill_in "Email", with: @customer.email
    fill_in "Firstname", with: @customer.firstname
    fill_in "Lastname", with: @customer.lastname
    fill_in "Nhs number", with: @customer.nhs_number
    fill_in "Password digest", with: @customer.password_digest
    fill_in "Postcode", with: @customer.postcode
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit customer_url(@customer)
    click_on "Edit this customer", match: :first

    fill_in "Email", with: @customer.email
    fill_in "Firstname", with: @customer.firstname
    fill_in "Lastname", with: @customer.lastname
    fill_in "Nhs number", with: @customer.nhs_number
    fill_in "Password digest", with: @customer.password_digest
    fill_in "Postcode", with: @customer.postcode
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit customer_url(@customer)
    click_on "Destroy this customer", match: :first

    assert_text "Customer was successfully destroyed"
  end
end
