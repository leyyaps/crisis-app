class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request
    if @message.deliver
      redirect_to contact_us_path, notice: "Thank you! Your message has been sent."
    else
      flash.now[:error] = 'Sorry! An error occured. Please try again.'
      render :new
    end
  end
      
end
