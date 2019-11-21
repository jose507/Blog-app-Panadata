require "application_system_test_case"

class NewCommentsTest < ApplicationSystemTestCase
  setup do
    @new_comment = new_comments(:one)
  end

  test "visiting the index" do
    visit new_comments_url
    assert_selector "h1", text: "New Comments"
  end

  test "creating a New comment" do
    visit new_comments_url
    click_on "New New Comment"

    click_on "Create New comment"

    assert_text "New comment was successfully created"
    click_on "Back"
  end

  test "updating a New comment" do
    visit new_comments_url
    click_on "Edit", match: :first

    click_on "Update New comment"

    assert_text "New comment was successfully updated"
    click_on "Back"
  end

  test "destroying a New comment" do
    visit new_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New comment was successfully destroyed"
  end
end
