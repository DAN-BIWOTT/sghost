require 'test_helper'

class BlogPanelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_panel = blog_panels(:one)
  end

  test "should get index" do
    get blog_panels_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_panel_url
    assert_response :success
  end

  test "should create blog_panel" do
    assert_difference('BlogPanel.count') do
      post blog_panels_url, params: { blog_panel: { bimage: @blog_panel.bimage, bmessage: @blog_panel.bmessage, btitle: @blog_panel.btitle } }
    end

    assert_redirected_to blog_panel_url(BlogPanel.last)
  end

  test "should show blog_panel" do
    get blog_panel_url(@blog_panel)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_panel_url(@blog_panel)
    assert_response :success
  end

  test "should update blog_panel" do
    patch blog_panel_url(@blog_panel), params: { blog_panel: { bimage: @blog_panel.bimage, bmessage: @blog_panel.bmessage, btitle: @blog_panel.btitle } }
    assert_redirected_to blog_panel_url(@blog_panel)
  end

  test "should destroy blog_panel" do
    assert_difference('BlogPanel.count', -1) do
      delete blog_panel_url(@blog_panel)
    end

    assert_redirected_to blog_panels_url
  end
end
