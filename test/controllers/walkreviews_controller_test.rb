require "test_helper"

class WalkreviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get walkreviews_new_url
    assert_response :success
  end
end
