require 'test_helper'

class CostumesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get costumes_show_url
    assert_response :success
  end

end
