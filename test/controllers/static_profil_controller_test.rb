require "test_helper"

class StaticProfilControllerTest < ActionDispatch::IntegrationTest
  test "should get profil" do
    get static_profil_profil_url
    assert_response :success
  end
end
