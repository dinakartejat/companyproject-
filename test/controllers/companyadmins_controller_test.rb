require "test_helper"

class CompanyadminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companyadmin = companyadmins(:one)
  end

  test "should get index" do
    get companyadmins_url
    assert_response :success
  end

  test "should get new" do
    get new_companyadmin_url
    assert_response :success
  end

  test "should create companyadmin" do
    assert_difference("Companyadmin.count") do
      post companyadmins_url, params: { companyadmin: { email: @companyadmin.email, password: @companyadmin.password, username: @companyadmin.username } }
    end

    assert_redirected_to companyadmin_url(Companyadmin.last)
  end

  test "should show companyadmin" do
    get companyadmin_url(@companyadmin)
    assert_response :success
  end

  test "should get edit" do
    get edit_companyadmin_url(@companyadmin)
    assert_response :success
  end

  test "should update companyadmin" do
    patch companyadmin_url(@companyadmin), params: { companyadmin: { email: @companyadmin.email, password: @companyadmin.password, username: @companyadmin.username } }
    assert_redirected_to companyadmin_url(@companyadmin)
  end

  test "should destroy companyadmin" do
    assert_difference("Companyadmin.count", -1) do
      delete companyadmin_url(@companyadmin)
    end

    assert_redirected_to companyadmins_url
  end
end
