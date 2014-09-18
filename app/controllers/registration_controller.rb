class RegistrationController < ApplicationController

def new
		@registration = Registration.new
	end

  def create
    @registration = Registration.new(params[:registration])
    
    if @registration.valid?
      RegistrationsMailer.new_registration(@registration).deliver
      redirect_to(dialin_path, :notice => "You've logged in successfully. Please follow the instructions below.")

    else
      redirect_to(root_path, :notice => "Please fill all fields.")
    end
  end

end
