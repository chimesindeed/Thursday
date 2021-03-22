require "test_helper"

class WordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get words_new_url
    assert_response :success
  end

  test "should get create" do
    get words_create_url
    assert_response :success
  end

  test "should get edit" do
    get words_edit_url
    assert_response :success
  end

  test "should get show" do
    get words_show_url
    assert_response :success
  end

  test "should get delete" do
    get words_delete_url
    assert_response :success
  end
end
