require "test_helper"

class CustomerPharmacyOrderControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_pharmacy_order_new_url
    assert_response :success
  end

  test "should get create" do
    get customer_pharmacy_order_create_url
    assert_response :success
  end
end
