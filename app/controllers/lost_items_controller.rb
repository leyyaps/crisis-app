class LostItemsController < ApplicationController

  def new
    @lost_item = LostItem.new
  end

  def create
    @lost_item = LostItem.new(params[:message])
    @lost_item.request = request
    if @lost_item.deliver
      redirect_to contact_us_path, notice: "Thank you! Your message has been sent."
    else
      flash.now[:error] = 'Sorry! An error occured. Please try again.'
      render :new
    end
  end

end
