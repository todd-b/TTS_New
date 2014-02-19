require 'test_helper'

class PhotoBlogsControllerTest < ActionController::TestCase
  setup do
    @photo_blog = photo_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_blog" do
    assert_difference('PhotoBlog.count') do
      post :create, photo_blog: { date_taken: @photo_blog.date_taken, entry: @photo_blog.entry, location: @photo_blog.location }
    end

    assert_redirected_to photo_blog_path(assigns(:photo_blog))
  end

  test "should show photo_blog" do
    get :show, id: @photo_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_blog
    assert_response :success
  end

  test "should update photo_blog" do
    patch :update, id: @photo_blog, photo_blog: { date_taken: @photo_blog.date_taken, entry: @photo_blog.entry, location: @photo_blog.location }
    assert_redirected_to photo_blog_path(assigns(:photo_blog))
  end

  test "should destroy photo_blog" do
    assert_difference('PhotoBlog.count', -1) do
      delete :destroy, id: @photo_blog
    end

    assert_redirected_to photo_blogs_path
  end
end
