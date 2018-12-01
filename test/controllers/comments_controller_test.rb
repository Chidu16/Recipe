require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_url
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
<<<<<<< HEAD
      post comments_url, params: { comment: { body: @comment.body, recipe: @comment.recipe, user_name: @comment.user_name } }
=======
      post comments_url, params: { comment: { body: @comment.body, recipe_id: @comment.recipe_id,  user_name: @comment.user_name } }
>>>>>>> 5a5db98f954c3224acc9e9bd8d55f5d14ebfa3a1
    end

    assert_redirected_to comment_url(Comment.last)
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_url(@comment)
    assert_response :success
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { body: @comment.body, recipe_id: @comment.recipe_id,  user_name: @comment.user_name } }
    assert_redirected_to comment_url(@comment)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to comments_url
  end
end
