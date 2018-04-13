require 'test_helper'

class LightsControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get lights_get_url
    assert_response :success
  end

end
