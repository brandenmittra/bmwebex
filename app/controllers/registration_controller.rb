class RegistrationController < ApplicationController

def new
		@registration = Registration.new
	end

  def create
    @registration = Registration.new(params[:registration])
    
    if @registration.valid?
      NotificationsMailer.new_registration(@registration).deliver
      redirect_to(welcome_path, :notice => "You have successfully registered.")

    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end
