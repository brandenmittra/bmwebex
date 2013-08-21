class RegistrationsMailer < ActionMailer::Base

  default :from => "chloe@auroracomms.com"
  default :to => "chloe@auroracomms.com"

  def new_registration(registration)
    @registration = registration
    mail(:subject => "Realise Asthma Registration")
  end

end