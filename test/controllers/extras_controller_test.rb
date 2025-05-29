require "test_helper"

class ExtrasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get extras_new_url
    assert_response :success
  end
end
