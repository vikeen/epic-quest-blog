require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact"
  end
end
