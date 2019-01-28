require 'test_helper'

class UserActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_activities_create_url
    assert_response :success
  end

end
