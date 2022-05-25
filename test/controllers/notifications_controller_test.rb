require "test_helper"

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notification = Notification.create(title: "This is message 1", description:"This is the discription of message 1", user_id: 1, email:"henk@test.com", created_at:"Tue, 22 May 2022 14:13:47.482360000 UTC +00:00")
    @user = User.create(email: "henk@test.com", password: "test123", password_confirmation:"test123", is_admin:true)
  end

  test "should get index" do
    get notifications_url
    assert_response :success
  end

  test "should get new" do
    get new_notification_url
    assert_response :success
  end

  test "should create notification" do
    assert_difference("Notification.count") do
      post notifications_url, params: { notification: { description: @notification.description, title: @notification.title, email: @notification.email } }
    end

    assert_redirected_to notification_url(Notification.last)
  end

  test "should show notification" do
    get notification_url(@notification)
    assert_response :success
  end

  test "should get edit" do
    get edit_notification_url(@notification)
    assert_response :success
  end

  test "should update notification" do
    patch notification_url(@notification), params: { notification: { description: @notification.description, title: @notification.title, email: @notification.email } }
    assert_redirected_to notification_url(@notification)
  end

  test "should destroy notification" do
    assert_difference("Notification.count", -1) do
      delete notification_url(@notification)
    end

    assert_redirected_to notifications_url
  end
end
