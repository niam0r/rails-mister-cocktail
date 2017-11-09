require 'test_helper'

class CocktailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cocktails_index_url
    assert_response :success
  end

  test "should get new" do
    get cocktails_new_url
    assert_response :success
  end

  test "should get create" do
    get cocktails_create_url
    assert_response :success
  end

  test "should get show" do
    get cocktails_show_url
    assert_response :success
  end

  test "should get edit" do
    get cocktails_edit_url
    assert_response :success
  end

  test "should get update" do
    get cocktails_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cocktails_destroy_url
    assert_response :success
  end

end
