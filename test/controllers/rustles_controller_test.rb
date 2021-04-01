require 'test_helper'

class RustlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rustles_index_url
    assert_response :success
  end

end
