require 'test_helper'

class MyPlaybookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_playbook_index_url
    assert_response :success
  end

end
