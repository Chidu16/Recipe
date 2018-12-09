require "application_system_test_case"

class NotifylikesTest < ApplicationSystemTestCase
  setup do
    @notifylike = notifylikes(:one)
  end

  test "visiting the index" do
    visit notifylikes_url
    assert_selector "h1", text: "Notifylikes"
  end

  test "creating a Notifylike" do
    visit notifylikes_url
    click_on "New Notifylike"

    fill_in "Like", with: @notifylike.like_id
    fill_in "Name", with: @notifylike.name
    fill_in "User", with: @notifylike.user_id
    click_on "Create Notifylike"

    assert_text "Notifylike was successfully created"
    click_on "Back"
  end

  test "updating a Notifylike" do
    visit notifylikes_url
    click_on "Edit", match: :first

    fill_in "Like", with: @notifylike.like_id
    fill_in "Name", with: @notifylike.name
    fill_in "User", with: @notifylike.user_id
    click_on "Update Notifylike"

    assert_text "Notifylike was successfully updated"
    click_on "Back"
  end

  test "destroying a Notifylike" do
    visit notifylikes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notifylike was successfully destroyed"
  end
end
