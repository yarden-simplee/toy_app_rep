require 'test_helper'

class MucropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mucropost = mucroposts(:one)
  end

  test "should get index" do
    get mucroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_mucropost_url
    assert_response :success
  end

  test "should create mucropost" do
    assert_difference('Mucropost.count') do
      post mucroposts_url, params: { mucropost: { content: @mucropost.content, user_id: @mucropost.user_id } }
    end

    assert_redirected_to mucropost_url(Mucropost.last)
  end

  test "should show mucropost" do
    get mucropost_url(@mucropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_mucropost_url(@mucropost)
    assert_response :success
  end

  test "should update mucropost" do
    patch mucropost_url(@mucropost), params: { mucropost: { content: @mucropost.content, user_id: @mucropost.user_id } }
    assert_redirected_to mucropost_url(@mucropost)
  end

  test "should destroy mucropost" do
    assert_difference('Mucropost.count', -1) do
      delete mucropost_url(@mucropost)
    end

    assert_redirected_to mucroposts_url
  end
end
