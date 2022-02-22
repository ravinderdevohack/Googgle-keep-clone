require "test_helper"

class LabelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get label_index_url
    assert_response :success
  end

  test "should get new" do
    get label_new_url
    assert_response :success
  end

  test "should get create" do
    get label_create_url
    assert_response :success
  end

  test "should get edit" do
    get label_edit_url
    assert_response :success
  end

  test "should get update" do
    get label_update_url
    assert_response :success
  end

  test "should get delete" do
    get label_delete_url
    assert_response :success
  end
end
