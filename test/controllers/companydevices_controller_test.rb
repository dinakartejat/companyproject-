require "test_helper"

class CompanydevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companydevice = companydevices(:one)
  end

  test "should get index" do
    get companydevices_url
    assert_response :success
  end

  test "should get new" do
    get new_companydevice_url
    assert_response :success
  end

  test "should create companydevice" do
    assert_difference("Companydevice.count") do
      post companydevices_url, params: { companydevice: { companyemployee_id: @companydevice.companyemployee_id, device_type: @companydevice.device_type, devicename: @companydevice.devicename, os_type: @companydevice.os_type, service_tag: @companydevice.service_tag } }
    end

    assert_redirected_to companydevice_url(Companydevice.last)
  end

  test "should show companydevice" do
    get companydevice_url(@companydevice)
    assert_response :success
  end

  test "should get edit" do
    get edit_companydevice_url(@companydevice)
    assert_response :success
  end

  test "should update companydevice" do
    patch companydevice_url(@companydevice), params: { companydevice: { companyemployee_id: @companydevice.companyemployee_id, device_type: @companydevice.device_type, devicename: @companydevice.devicename, os_type: @companydevice.os_type, service_tag: @companydevice.service_tag } }
    assert_redirected_to companydevice_url(@companydevice)
  end

  test "should destroy companydevice" do
    assert_difference("Companydevice.count", -1) do
      delete companydevice_url(@companydevice)
    end

    assert_redirected_to companydevices_url
  end
end
