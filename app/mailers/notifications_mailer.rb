class NotificationsMailer < ActionMailer::Base

  default :from => "Chloe@auroracomms.com"
  default :to => "Chloe@auroracomms.com"

  def new_message(message)
    @message = message
    mail(:subject => "Realise Asthma Q&A")
  end

end