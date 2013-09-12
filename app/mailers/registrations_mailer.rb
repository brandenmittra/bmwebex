class RegistrationsMailer < ActionMailer::Base

  default :from => "candice@auroracomms.com"
  default :to => "carolin@auroracomms.com"
  default :bcc => "branden.mittra@streamingwell.com"

  def new_registration(registration)
    @registration = registration
    mail(:subject => "REALISE Asthma Registration")
  end

end