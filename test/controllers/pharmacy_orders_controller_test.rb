require "test_helper"

class PharmacyOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pharmacy_orders_new_url
    assert_response :success
  end

  test "should get create" do
    get pharmacy_orders_create_url
    assert_response :success
  end
end
