require 'test_helper'

class NewCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_comment = new_comments(:one)
  end

  test "should get index" do
    get new_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_new_comment_url
    assert_response :success
  end

  test "should create new_comment" do
    assert_difference('NewComment.count') do
      post new_comments_url, params: { new_comment: {  } }
    end

    assert_redirected_to new_comment_url(NewComment.last)
  end

  test "should show new_comment" do
    get new_comment_url(@new_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_comment_url(@new_comment)
    assert_response :success
  end

  test "should update new_comment" do
    patch new_comment_url(@new_comment), params: { new_comment: {  } }
    assert_redirected_to new_comment_url(@new_comment)
  end

  test "should destroy new_comment" do
    assert_difference('NewComment.count', -1) do
      delete new_comment_url(@new_comment)
    end

    assert_redirected_to new_comments_url
  end
end
