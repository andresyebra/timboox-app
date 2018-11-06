require 'test_helper'

class OficceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oficce_index_url
    assert_response :success
  end

end
