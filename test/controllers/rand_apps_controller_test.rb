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
    # assert @response.body
    # must { respond_with(:redirect) }
    
  end
  test "destroy all random numbers" do
    get rand_apps_url
    delete destroy_all_rand_apps_path
    assert RandApp.count,0
  end


end