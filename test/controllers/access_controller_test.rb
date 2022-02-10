require "test_helper"

class AccessControllerTest < ActionDispatch::IntegrationTest
  test "should get logout" do
    get access_logout_url
    assert_response :success
  end

  test "should get customer_login_attempt" do
    get access_customer_login_attempt_url
    assert_response :success
  end

  test "should get supplier_login_attempt" do
    get access_supplier_login_attempt_url
    assert_response :success
  end

  test "should get pharmacy_login_attempt" do
    get access_pharmacy_login_attempt_url
    assert_response :success
  end
end
