require "test_helper"

class CompanyemployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companyemployee = companyemployees(:one)
  end

  test "should get index" do
    get companyemployees_url
    assert_response :success
  end

  test "should get new" do
    get new_companyemployee_url
    assert_response :success
  end

  test "should create companyemployee" do
    assert_difference("Companyemployee.count") do
      post companyemployees_url, params: { companyemployee: { companyadmin_id: @companyemployee.companyadmin_id, companydevice_id: @companyemployee.companydevice_id, email: @companyemployee.email, name: @companyemployee.name, phonenumber: @companyemployee.phonenumber } }
    end

    assert_redirected_to companyemployee_url(Companyemployee.last)
  end

  test "should show companyemployee" do
    get companyemployee_url(@companyemployee)
    assert_response :success
  end

  test "should get edit" do
    get edit_companyemployee_url(@companyemployee)
    assert_response :success
  end

  test "should update companyemployee" do
    patch companyemployee_url(@companyemployee), params: { companyemployee: { companyadmin_id: @companyemployee.companyadmin_id, companydevice_id: @companyemployee.companydevice_id, email: @companyemployee.email, name: @companyemployee.name, phonenumber: @companyemployee.phonenumber } }
    assert_redirected_to companyemployee_url(@companyemployee)
  end

  test "should destroy companyemployee" do
    assert_difference("Companyemployee.count", -1) do
      delete companyemployee_url(@companyemployee)
    end

    assert_redirected_to companyemployees_url
  end
end
