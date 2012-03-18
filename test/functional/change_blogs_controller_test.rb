require 'test_helper'

class ChangeBlogsControllerTest < ActionController::TestCase
  setup do
    @change_blog = change_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:change_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create change_blog" do
    assert_difference('ChangeBlog.count') do
      post :create, change_blog: @change_blog.attributes
    end

    assert_redirected_to change_blog_path(assigns(:change_blog))
  end

  test "should show change_blog" do
    get :show, id: @change_blog.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @change_blog.to_param
    assert_response :success
  end

  test "should update change_blog" do
    put :update, id: @change_blog.to_param, change_blog: @change_blog.attributes
    assert_redirected_to change_blog_path(assigns(:change_blog))
  end

  test "should destroy change_blog" do
    assert_difference('ChangeBlog.count', -1) do
      delete :destroy, id: @change_blog.to_param
    end

    assert_redirected_to change_blogs_path
  end
end
