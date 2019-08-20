require 'test_helper'

class BeginningControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get beginning_new_url
    assert_response :success
  end

  test "should get create" do
    get beginning_create_url
    assert_response :success
  end

  test "should get show" do
    get beginning_show_url
    assert_response :success
  end

  test "should get index" do
    get beginning_index_url
    assert_response :success
  end

end
