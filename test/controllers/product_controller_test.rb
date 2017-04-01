require 'test_helper'

class ProductControllerTest < ActionController::TestCase
  test "should get sell_product" do
    get :sell_product
    assert_response :success
  end

  test "should get buy_product" do
    get :buy_product
    assert_response :success
  end

  test "should get view_product" do
    get :view_product
    assert_response :success
  end

end
