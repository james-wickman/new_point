require 'test_helper'

class DistributersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get distributers_index_url
    assert_response :success
  end

  test "should get new" do
    get distributers_new_url
    assert_response :success
  end

  test "should get create" do
    get distributers_create_url
    assert_response :success
  end

  test "should get edit" do
    get distributers_edit_url
    assert_response :success
  end

  test "should get update" do
    get distributers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get distributers_destroy_url
    assert_response :success
  end

end
