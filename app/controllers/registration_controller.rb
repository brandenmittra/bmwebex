class RegistrationController < ApplicationController

def new
		@registration = Registration.new
	end

  def create
    @registration = Registration.new(params[:registration])
    
    if @registration.valid?
      RegistrationsMailer.new_registration(@registration).deliver
      redirect_to(welcome_path, :notice => "You have successfully registered. We'll send you a confirmation email shortly.")

    else
      redirect_to(root_path, :notice => "Please fill all fields and tick to confirm you are a journalist.")
    end
  end

end
