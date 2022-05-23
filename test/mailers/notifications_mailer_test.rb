require "test_helper"

class NotificationsMailerTest < ActionMailer::TestCase
  test "recieved" do
    mail = NotificationsMailer.recieved notifications(:one)
    assert_equal "New Notification from X", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
  end

end
