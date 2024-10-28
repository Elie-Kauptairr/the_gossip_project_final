require "test_helper"

class StaticGossipControllerTest < ActionDispatch::IntegrationTest
  test "should get gossip" do
    get static_gossip_gossip_url
    assert_response :success
  end
end
