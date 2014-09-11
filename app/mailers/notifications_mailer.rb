class NotificationsMailer < ActionMailer::Base

  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"
  default :bcc => "branden.mittra@streamingwell.com"

  def new_message(message)
    @message = message
    mail(:subject => "Bayer Webex Question")
  end

end