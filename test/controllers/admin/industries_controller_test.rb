require "test_helper"

class Admin::IndustriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_industry = admin_industries(:one)
  end

  test "should get index" do
    get admin_industries_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_industry_url
    assert_response :success
  end

  test "should create admin_industry" do
    assert_difference("Admin::Industry.count") do
      post admin_industries_url, params: { admin_industry: {  } }
    end

    assert_redirected_to admin_industry_url(Admin::Industry.last)
  end

  test "should show admin_industry" do
    get admin_industry_url(@admin_industry)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_industry_url(@admin_industry)
    assert_response :success
  end

  test "should update admin_industry" do
    patch admin_industry_url(@admin_industry), params: { admin_industry: {  } }
    assert_redirected_to admin_industry_url(@admin_industry)
  end

  test "should destroy admin_industry" do
    assert_difference("Admin::Industry.count", -1) do
      delete admin_industry_url(@admin_industry)
    end

    assert_redirected_to admin_industries_url
  end
end
