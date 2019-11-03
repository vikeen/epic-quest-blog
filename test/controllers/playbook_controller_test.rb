require 'test_helper'

class PlaybookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get playbook_url
    assert_response :success
    assert_select "title", "Playbook"
  end

  test "should get startup index" do
    get playbook_startup_url
    assert_response :success
    assert_select "title", "Startups"
  end

  test "should get test driven development index" do
    get playbook_test_driven_development_url
    assert_response :success
    assert_select "title", "Test Driven Development"
  end

  test "should get weekly_iterations index" do
    get playbook_weekly_iterations_url
    assert_response :success
    assert_select "title", "Weekly Iterations"
  end

  test "should get build_measure_learn index" do
    get playbook_build_measure_learn_url
    assert_response :success
    assert_select "title", "Build, Measure, Learn"
  end

  test "should get communication index" do
    get playbook_communication_url
    assert_response :success
    assert_select "title", "Communication"
  end

  test "should get lean_project_management index" do
    get playbook_lean_project_management_url
    assert_response :success
    assert_select "title", "Lean Project Management"
  end

  test "should get pricing index" do
    get playbook_pricing_url
    assert_response :success
    assert_select "title", "Pricing"
  end
end
