require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get web_development" do
    get services_web_development_url
    assert_response :success
  end

  test "should get ruby_on_rails" do
    get services_ruby_on_rails_url
    assert_response :success
  end

  test "should get wordpress" do
    get services_wordpress_url
    assert_response :success
  end

  test "should get mobile_apps" do
    get services_mobile_apps_url
    assert_response :success
  end

  test "should get react_native" do
    get services_react_native_url
    assert_response :success
  end

  test "should get firebase" do
    get services_firebase_url
    assert_response :success
  end
end
