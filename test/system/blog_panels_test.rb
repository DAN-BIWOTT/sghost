require "application_system_test_case"

class BlogPanelsTest < ApplicationSystemTestCase
  setup do
    @blog_panel = blog_panels(:one)
  end

  test "visiting the index" do
    visit blog_panels_url
    assert_selector "h1", text: "Blog Panels"
  end

  test "creating a Blog panel" do
    visit blog_panels_url
    click_on "New Blog Panel"

    fill_in "Bimage", with: @blog_panel.bimage
    fill_in "Bmessage", with: @blog_panel.bmessage
    fill_in "Btitle", with: @blog_panel.btitle
    click_on "Create Blog panel"

    assert_text "Blog panel was successfully created"
    click_on "Back"
  end

  test "updating a Blog panel" do
    visit blog_panels_url
    click_on "Edit", match: :first

    fill_in "Bimage", with: @blog_panel.bimage
    fill_in "Bmessage", with: @blog_panel.bmessage
    fill_in "Btitle", with: @blog_panel.btitle
    click_on "Update Blog panel"

    assert_text "Blog panel was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog panel" do
    visit blog_panels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog panel was successfully destroyed"
  end
end
