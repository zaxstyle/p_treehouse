require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "test /login route opens the login page" do 
		get '/login'
		assert_response :success
	end

end
