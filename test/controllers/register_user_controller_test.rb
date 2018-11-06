require 'test_helper'

class RegisterUserControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get register_user_create_url
    assert_response :success
  end

end
