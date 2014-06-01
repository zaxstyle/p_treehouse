require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: user(:zax).profile_name
    assert_response :success
    assert_templates 'profile/show'
  end

  test "should render a 404 on profile not found" do 
  	get :show, id: "doesn't exist"
  	assert_response :not_found
  end
end
