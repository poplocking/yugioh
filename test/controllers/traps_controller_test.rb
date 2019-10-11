require 'test_helper'

class TrapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get traps_index_url
    assert_response :success
  end

  test "should get show" do
    get traps_show_url
    assert_response :success
  end

end
