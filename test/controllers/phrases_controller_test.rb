require "test_helper"

class PhrasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get phrases_new_url
    assert_response :success
  end

  test "should get create" do
    get phrases_create_url
    assert_response :success
  end

  test "should get edit" do
    get phrases_edit_url
    assert_response :success
  end

  test "should get show" do
    get phrases_show_url
    assert_response :success
  end

  test "should get delete" do
    get phrases_delete_url
    assert_response :success
  end

  test "should get update" do
    get phrases_update_url
    assert_response :success
  end
end
