class LostItemsController < ApplicationController

  def new
    @lost_item = LostItem.new
  end

  def create
    @lost_item = LostItem.new(params[:lost_item])
    @lost_item.request = request
    if @lost_item.deliver
      redirect_to lostproperty_path, notice: "Thank you! Your message has been sent."
    else
      flash.now[:error] = @lost_item.errors.full_messages
      render :new
    end
  end

end

