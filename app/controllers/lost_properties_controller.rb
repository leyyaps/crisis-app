class LostPropertiesController < ApplicationController


    def new
      @lostproperty = Lostproperty.new
    end

    def create
      @lostproperty = Lostproperty.new(params[:lostproperty])
      @lostproperty.request = request
      if @lostproperty.deliver
        redirect_to lostproperty_path, notice: "Your message has been sent."
      else
        flash[:alert] = "An error occurred while delivering this message."
        render :new
      end
    end

end
