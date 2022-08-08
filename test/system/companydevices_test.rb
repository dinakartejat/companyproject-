require "application_system_test_case"

class CompanydevicesTest < ApplicationSystemTestCase
  setup do
    @companydevice = companydevices(:one)
  end

  test "visiting the index" do
    visit companydevices_url
    assert_selector "h1", text: "Companydevices"
  end

  test "should create companydevice" do
    visit companydevices_url
    click_on "New companydevice"

    fill_in "Companyemployee", with: @companydevice.companyemployee_id
    fill_in "Device type", with: @companydevice.device_type
    fill_in "Devicename", with: @companydevice.devicename
    fill_in "Os type", with: @companydevice.os_type
    fill_in "Service tag", with: @companydevice.service_tag
    click_on "Create Companydevice"

    assert_text "Companydevice was successfully created"
    click_on "Back"
  end

  test "should update Companydevice" do
    visit companydevice_url(@companydevice)
    click_on "Edit this companydevice", match: :first

    fill_in "Companyemployee", with: @companydevice.companyemployee_id
    fill_in "Device type", with: @companydevice.device_type
    fill_in "Devicename", with: @companydevice.devicename
    fill_in "Os type", with: @companydevice.os_type
    fill_in "Service tag", with: @companydevice.service_tag
    click_on "Update Companydevice"

    assert_text "Companydevice was successfully updated"
    click_on "Back"
  end

  test "should destroy Companydevice" do
    visit companydevice_url(@companydevice)
    click_on "Destroy this companydevice", match: :first

    assert_text "Companydevice was successfully destroyed"
  end
end
