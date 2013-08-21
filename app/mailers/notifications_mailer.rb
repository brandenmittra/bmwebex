class NotificationsMailer < ActionMailer::Base

  default :from => "chloe@auroracomms.com"
  default :to => "chloe@auroracomms.com"

  def new_message(message)
    @message = message
    mail(:subject => "Realise Asthma Q&A")
  end

end