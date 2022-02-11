require "test_helper"

class SupplierOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get supplier_orders_new_url
    assert_response :success
  end

  test "should get create" do
    get supplier_orders_create_url
    assert_response :success
  end
end
