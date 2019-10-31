require 'test_helper'

class WorkWithMeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get work_with_me_index_url
    assert_response :success
  end

end
