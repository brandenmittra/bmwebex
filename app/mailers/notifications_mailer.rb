class NotificationsMailer < ActionMailer::Base

  default :from => "carolin@auroracomms.com"
  default :to => "carolin@auroracomms.com"
  default :bcc => "branden.mittra@streamingwell.com"

  def new_message(message)
    @message = message
    mail(:subject => "Realise Asthma Q&A")
  end

end