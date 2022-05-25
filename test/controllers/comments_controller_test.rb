require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notification = notifications(:one)
    @comment = comments(:one)
    sign_in users(:one)
  end

  test "should create notification" do
    assert_difference("Comment.count") do
      post notification_url(@notification) + "/comments", params: { comment: { content: "A", user_id: 1 }}
    end

    assert_redirected_to notification_url(@notification)
  end
end
