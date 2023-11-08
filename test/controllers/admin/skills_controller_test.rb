require "test_helper"

class Admin::SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_skill = admin_skills(:one)
  end

  test "should get index" do
    get admin_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_skill_url
    assert_response :success
  end

  test "should create admin_skill" do
    assert_difference("Admin::Skill.count") do
      post admin_skills_url, params: { admin_skill: {  } }
    end

    assert_redirected_to admin_skill_url(Admin::Skill.last)
  end

  test "should show admin_skill" do
    get admin_skill_url(@admin_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_skill_url(@admin_skill)
    assert_response :success
  end

  test "should update admin_skill" do
    patch admin_skill_url(@admin_skill), params: { admin_skill: {  } }
    assert_redirected_to admin_skill_url(@admin_skill)
  end

  test "should destroy admin_skill" do
    assert_difference("Admin::Skill.count", -1) do
      delete admin_skill_url(@admin_skill)
    end

    assert_redirected_to admin_skills_url
  end
end
