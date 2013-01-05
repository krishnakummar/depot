require 'test_helper'

class CartControllerTest < ActionController::TestCase
  test "should get add_cart" do
    get :add_cart
    assert_response :success
  end

end
