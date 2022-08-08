require "application_system_test_case"

class CompanyadminsTest < ApplicationSystemTestCase
  setup do
    @companyadmin = companyadmins(:one)
  end

  test "visiting the index" do
    visit companyadmins_url
    assert_selector "h1", text: "Companyadmins"
  end

  test "should create companyadmin" do
    visit companyadmins_url
    click_on "New companyadmin"

    fill_in "Email", with: @companyadmin.email
    fill_in "Password", with: @companyadmin.password
    fill_in "Username", with: @companyadmin.username
    click_on "Create Companyadmin"

    assert_text "Companyadmin was successfully created"
    click_on "Back"
  end

  test "should update Companyadmin" do
    visit companyadmin_url(@companyadmin)
    click_on "Edit this companyadmin", match: :first

    fill_in "Email", with: @companyadmin.email
    fill_in "Password", with: @companyadmin.password
    fill_in "Username", with: @companyadmin.username
    click_on "Update Companyadmin"

    assert_text "Companyadmin was successfully updated"
    click_on "Back"
  end

  test "should destroy Companyadmin" do
    visit companyadmin_url(@companyadmin)
    click_on "Destroy this companyadmin", match: :first

    assert_text "Companyadmin was successfully destroyed"
  end
end
