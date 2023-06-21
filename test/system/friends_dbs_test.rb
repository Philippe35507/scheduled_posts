require "application_system_test_case"

class FriendsDbsTest < ApplicationSystemTestCase
  setup do
    @friends_db = friends_dbs(:one)
  end

  test "visiting the index" do
    visit friends_dbs_url
    assert_selector "h1", text: "Friends dbs"
  end

  test "should create friends db" do
    visit friends_dbs_url
    click_on "New friends db"

    fill_in "Email", with: @friends_db.email
    fill_in "First name", with: @friends_db.first_name
    fill_in "Last name", with: @friends_db.last_name
    fill_in "Phone", with: @friends_db.phone
    fill_in "Tweeter", with: @friends_db.tweeter
    click_on "Create Friends db"

    assert_text "Friends db was successfully created"
    click_on "Back"
  end

  test "should update Friends db" do
    visit friends_db_url(@friends_db)
    click_on "Edit this friends db", match: :first

    fill_in "Email", with: @friends_db.email
    fill_in "First name", with: @friends_db.first_name
    fill_in "Last name", with: @friends_db.last_name
    fill_in "Phone", with: @friends_db.phone
    fill_in "Tweeter", with: @friends_db.tweeter
    click_on "Update Friends db"

    assert_text "Friends db was successfully updated"
    click_on "Back"
  end

  test "should destroy Friends db" do
    visit friends_db_url(@friends_db)
    click_on "Destroy this friends db", match: :first

    assert_text "Friends db was successfully destroyed"
  end
end
