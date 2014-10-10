class RegistrationController < ApplicationController

def new
		@registration = Registration.new
	end

  def create
    @registration = Registration.new(params[:registration])
    
    if @registration.valid?
      RegistrationsMailer.new_registration(@registration).deliver
      redirect_to(archive_path, :notice => "You've logged in successfully.")

    else
      redirect_to(root_path, :notice => "Please make sure you've signed in with your work email address and filled all fields.")
    end
  end

end
