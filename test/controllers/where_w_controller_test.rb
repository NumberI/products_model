require 'test_helper'

class WhereWControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get where_w_new_url
    assert_response :success
  end

  test "should get create" do
    get where_w_create_url
    assert_response :success
  end

end
