require "application_system_test_case"

class CompanyemployeesTest < ApplicationSystemTestCase
  setup do
    @companyemployee = companyemployees(:one)
  end

  test "visiting the index" do
    visit companyemployees_url
    assert_selector "h1", text: "Companyemployees"
  end

  test "should create companyemployee" do
    visit companyemployees_url
    click_on "New companyemployee"

    fill_in "Companyadmin", with: @companyemployee.companyadmin_id
    fill_in "Companydevice", with: @companyemployee.companydevice_id
    fill_in "Email", with: @companyemployee.email
    fill_in "Name", with: @companyemployee.name
    fill_in "Phonenumber", with: @companyemployee.phonenumber
    click_on "Create Companyemployee"

    assert_text "Companyemployee was successfully created"
    click_on "Back"
  end

  test "should update Companyemployee" do
    visit companyemployee_url(@companyemployee)
    click_on "Edit this companyemployee", match: :first

    fill_in "Companyadmin", with: @companyemployee.companyadmin_id
    fill_in "Companydevice", with: @companyemployee.companydevice_id
    fill_in "Email", with: @companyemployee.email
    fill_in "Name", with: @companyemployee.name
    fill_in "Phonenumber", with: @companyemployee.phonenumber
    click_on "Update Companyemployee"

    assert_text "Companyemployee was successfully updated"
    click_on "Back"
  end

  test "should destroy Companyemployee" do
    visit companyemployee_url(@companyemployee)
    click_on "Destroy this companyemployee", match: :first

    assert_text "Companyemployee was successfully destroyed"
  end
end
