require 'test_helper'

class PublicBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_blog = public_blogs(:one)
  end

  test "should get index" do
    get public_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_public_blog_url
    assert_response :success
  end

  test "should create public_blog" do
    assert_difference('PublicBlog.count') do
      post public_blogs_url, params: { public_blog: { comments: @public_blog.comments, primateName: @public_blog.primateName } }
    end

    assert_redirected_to public_blog_url(PublicBlog.last)
  end

  test "should show public_blog" do
    get public_blog_url(@public_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_blog_url(@public_blog)
    assert_response :success
  end

  test "should update public_blog" do
    patch public_blog_url(@public_blog), params: { public_blog: { comments: @public_blog.comments, primateName: @public_blog.primateName } }
    assert_redirected_to public_blog_url(@public_blog)
  end

  test "should destroy public_blog" do
    assert_difference('PublicBlog.count', -1) do
      delete public_blog_url(@public_blog)
    end

    assert_redirected_to public_blogs_url
  end
end
