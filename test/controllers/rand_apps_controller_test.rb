require 'test_helper'

class RandAppsControllerTest < ActionDispatch::IntegrationTest

  test "should get rand_app index" do
    get rand_apps_url
    assert_response :success
  end
  
  test "should create random number" do
    assert_difference('RandApp.count', 1) do
      get rand_apps_url
      post rand_apps_path
    end
    assert_redirected_to rand_apps_path
  end
  
  test "destroy all random numbers" do
    rand_apps(:one)
    get rand_apps_url
    delete destroy_all_rand_apps_path
    assert RandApp.count,0
  end
  
  test "should destroy Random number" do
    rand_app = rand_apps(:one)
    assert_difference('RandApp.count', -1) do
      delete rand_app_url(rand_app)
    end
    assert_redirected_to rand_apps_path
  end

end