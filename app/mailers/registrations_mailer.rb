class RegistrationsMailer < ActionMailer::Base

  default :from => "branden.mittra@streamingwell.com"
  default :to => "branden.mittra@streamingwell.com"
  default :bcc => "branden.mittra@streamingwell.com"

  def new_registration(registration)
    @registration = registration
    mail(:subject => "Bayer Webex Login")
  end

end