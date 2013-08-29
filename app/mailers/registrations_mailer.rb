class RegistrationsMailer < ActionMailer::Base

  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"
  default :bcc => "branden@univrs.co.uk"
  
  def new_registration(registration)
    @registration = registration
    mail(:subject => "Realise Asthma Registration")
  end

end