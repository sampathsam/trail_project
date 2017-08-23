require 'test_helper'

class PropleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prople_index_url
    assert_response :success
  end

end
