require "test_helper"

class JobSeekersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_seeker = job_seekers(:one)
  end

  test "should get index" do
    get job_seekers_url
    assert_response :success
  end

  test "should get new" do
    get new_job_seeker_url
    assert_response :success
  end

  test "should create job_seeker" do
    assert_difference("JobSeeker.count") do
      post job_seekers_url, params: { job_seeker: {  } }
    end

    assert_redirected_to job_seeker_url(JobSeeker.last)
  end

  test "should show job_seeker" do
    get job_seeker_url(@job_seeker)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_seeker_url(@job_seeker)
    assert_response :success
  end

  test "should update job_seeker" do
    patch job_seeker_url(@job_seeker), params: { job_seeker: {  } }
    assert_redirected_to job_seeker_url(@job_seeker)
  end

  test "should destroy job_seeker" do
    assert_difference("JobSeeker.count", -1) do
      delete job_seeker_url(@job_seeker)
    end

    assert_redirected_to job_seekers_url
  end
end
