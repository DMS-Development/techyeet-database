require "application_system_test_case"

class Admin::IndustriesTest < ApplicationSystemTestCase
  setup do
    @admin_industry = admin_industries(:one)
  end

  test "visiting the index" do
    visit admin_industries_url
    assert_selector "h1", text: "Industries"
  end

  test "should create industry" do
    visit admin_industries_url
    click_on "New industry"

    click_on "Create Industry"

    assert_text "Industry was successfully created"
    click_on "Back"
  end

  test "should update Industry" do
    visit admin_industry_url(@admin_industry)
    click_on "Edit this industry", match: :first

    click_on "Update Industry"

    assert_text "Industry was successfully updated"
    click_on "Back"
  end

  test "should destroy Industry" do
    visit admin_industry_url(@admin_industry)
    click_on "Destroy this industry", match: :first

    assert_text "Industry was successfully destroyed"
  end
end
