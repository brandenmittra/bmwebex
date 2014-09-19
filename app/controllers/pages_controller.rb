class PagesController < ApplicationController
    
  def home
    @home_page = true
  end

  def holding
    @message = Message.new
  end

  def about
  end

  def live
    @message = Message.new
  end

  def live2
    @message = Message.new
  end

  def live_backup
    @message = Message.new
  end

  def confirm
  end

  def register
  end
end
