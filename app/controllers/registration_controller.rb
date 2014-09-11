class RegistrationController < ApplicationController

def new
		@registration = Registration.new
	end

  def create
    @registration = Registration.new(params[:registration])
    
    if @registration.valid?
      RegistrationsMailer.new_registration(@registration).deliver
      redirect_to(live_path, :notice => "You've logged in successfully. Please dial in on <INSERT DETAILS HERE>.")

    else
      redirect_to(root_path, :notice => "Please fill all fields.")
    end
  end

end
