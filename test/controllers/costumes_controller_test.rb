require 'test_helper'

class CostumesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get index" do
    get costumes_index_url
=======
  test "should get show" do
    get costumes_show_url
>>>>>>> master
    assert_response :success
  end

end
