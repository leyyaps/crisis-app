require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get jobs" do
    get static_pages_jobs_url
    assert_response :success
  end

  test "should get lostproperty" do
    get static_pages_lostproperty_url
    assert_response :success
  end

  test "should get socials" do
    get static_pages_socials_url
    assert_response :success
  end

  test "should get termsandconditions" do
    get static_pages_termsandconditions_url
    assert_response :success
  end

end
