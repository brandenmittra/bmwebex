class PagesController < ApplicationController
  
  before_filter :authenticate
  
  def home
  end

  def holding
  end

  def about
  end

  def live
  end

  def confirm
  end

  def register
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "barcelona"
    end
  end
end
