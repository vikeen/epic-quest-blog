require 'test_helper'

class ResumeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resume_url
    assert_response :success
    assert_select "title", "Resume"
  end
end
