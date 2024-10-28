require "test_helper"

class StaticWelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get static_welcome_welcome_url
    assert_response :success
  end
end
