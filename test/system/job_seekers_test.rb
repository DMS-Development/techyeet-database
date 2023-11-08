require "application_system_test_case"

class JobSeekersTest < ApplicationSystemTestCase
  setup do
    @job_seeker = job_seekers(:one)
  end

  test "visiting the index" do
    visit job_seekers_url
    assert_selector "h1", text: "Job seekers"
  end

  test "should create job seeker" do
    visit job_seekers_url
    click_on "New job seeker"

    click_on "Create Job seeker"

    assert_text "Job seeker was successfully created"
    click_on "Back"
  end

  test "should update Job seeker" do
    visit job_seeker_url(@job_seeker)
    click_on "Edit this job seeker", match: :first

    click_on "Update Job seeker"

    assert_text "Job seeker was successfully updated"
    click_on "Back"
  end

  test "should destroy Job seeker" do
    visit job_seeker_url(@job_seeker)
    click_on "Destroy this job seeker", match: :first

    assert_text "Job seeker was successfully destroyed"
  end
end
