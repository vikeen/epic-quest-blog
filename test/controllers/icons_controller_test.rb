require 'test_helper'

class IconsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get icons_url
    assert_response :success
    assert_select "title", "Icons"
  end
end
