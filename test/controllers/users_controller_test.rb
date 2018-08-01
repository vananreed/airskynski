require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get dashboard_url
    assert_response :success
  end

end
