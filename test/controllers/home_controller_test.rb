require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    puts home_index_url
    get home_index_url
    assert_response :success
  end
end
