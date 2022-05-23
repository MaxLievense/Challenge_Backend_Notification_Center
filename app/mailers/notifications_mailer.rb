class NotificationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.recieved.subject
  #
  def recieved(notification)
    @notification = notification

    # TODO add sender in subject of mail
    mail to: "to@example.org", subject: "New Notification from X"
  end
end
