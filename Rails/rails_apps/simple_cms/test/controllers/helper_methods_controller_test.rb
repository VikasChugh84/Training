require "test_helper"

class HelperMethodsControllerTest < ActionDispatch::IntegrationTest
  test "should get link_to" do
    get helper_methods_link_to_url
    assert_response :success
  end
end
