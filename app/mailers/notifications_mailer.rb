class NotificationsMailer < ActionMailer::Base

  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"

  def new_message(message)
    @message = message
    mail(:subject => "Realise Asthma Q&A")
  end

  def new_registration(registration)
    @registration = registration
    mail(:subject => "Realise Asthma Registration")
  end

end