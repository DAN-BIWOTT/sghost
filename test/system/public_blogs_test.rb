require "application_system_test_case"

class PublicBlogsTest < ApplicationSystemTestCase
  setup do
    @public_blog = public_blogs(:one)
  end

  test "visiting the index" do
    visit public_blogs_url
    assert_selector "h1", text: "Public Blogs"
  end

  test "creating a Public blog" do
    visit public_blogs_url
    click_on "New Public Blog"

    fill_in "Comments", with: @public_blog.comments
    fill_in "Primatename", with: @public_blog.primateName
    click_on "Create Public blog"

    assert_text "Public blog was successfully created"
    click_on "Back"
  end

  test "updating a Public blog" do
    visit public_blogs_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @public_blog.comments
    fill_in "Primatename", with: @public_blog.primateName
    click_on "Update Public blog"

    assert_text "Public blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Public blog" do
    visit public_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Public blog was successfully destroyed"
  end
end
