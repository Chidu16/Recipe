require 'test_helper'

class NotifylikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notifylike = notifylikes(:one)
  end

  test "should get index" do
    get notifylikes_url
    assert_response :success
  end

  test "should get new" do
    get new_notifylike_url
    assert_response :success
  end

  test "should create notifylike" do
    assert_difference('Notifylike.count') do
      post notifylikes_url, params: { notifylike: { like_id: @notifylike.like_id, name: @notifylike.name, user_id: @notifylike.user_id } }
    end

    assert_redirected_to notifylike_url(Notifylike.last)
  end

  test "should show notifylike" do
    get notifylike_url(@notifylike)
    assert_response :success
  end

  test "should get edit" do
    get edit_notifylike_url(@notifylike)
    assert_response :success
  end

  test "should update notifylike" do
    patch notifylike_url(@notifylike), params: { notifylike: { like_id: @notifylike.like_id, name: @notifylike.name, user_id: @notifylike.user_id } }
    assert_redirected_to notifylike_url(@notifylike)
  end

  test "should destroy notifylike" do
    assert_difference('Notifylike.count', -1) do
      delete notifylike_url(@notifylike)
    end

    assert_redirected_to notifylikes_url
  end
end
