require 'test_helper'

class RandAppsControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get rand_apps_controller_url
    assert_response :success
  end

end
