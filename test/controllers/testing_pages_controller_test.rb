require 'test_helper'

class TestingPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testing_page = testing_pages(:one)
  end

  test "should get index" do
    get testing_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_testing_page_url
    assert_response :success
  end

  test "should create testing_page" do
    assert_difference('TestingPage.count') do
      post testing_pages_url, params: { testing_page: { about: @testing_page.about, help: @testing_page.help, home: @testing_page.home } }
    end

    assert_redirected_to testing_page_url(TestingPage.last)
  end

  test "should show testing_page" do
    get testing_page_url(@testing_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_testing_page_url(@testing_page)
    assert_response :success
  end

  test "should update testing_page" do
    patch testing_page_url(@testing_page), params: { testing_page: { about: @testing_page.about, help: @testing_page.help, home: @testing_page.home } }
    assert_redirected_to testing_page_url(@testing_page)
  end

  test "should destroy testing_page" do
    assert_difference('TestingPage.count', -1) do
      delete testing_page_url(@testing_page)
    end

    assert_redirected_to testing_pages_url
  end
end
