class RegistrationsMailer < ActionMailer::Base

  default :from => "candice@auroracomms.com"
  default :to => "candice@auroracomms.com"
  default :bcc => "branden.mittra@streamingwell.com"

  def new_registration(registration)
    @registration = registration
    mail(:subject => "Realise Asthma Registration")
  end

end