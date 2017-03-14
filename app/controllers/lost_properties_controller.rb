class LostPropertiesController < ApplicationController


    def new
      @lostproperty = Lostproperty.new
    end

    def create
      @lostproperty = Lostproperty.new(lostproperty_params)
      
      if @lostproperty.valid?
        LostPropertyMailer.new_lostproperty(@lostproperty).deliver
        redirect_to lostproperty_path, notice: "Your message has been sent."
      else
        flash[:alert] = "An error occurred while delivering this message."
        render :new
      end
    end

  private

    def message_params
      params.require(:lostproperty).permit(:name, :email, :mobile, :content)
    end






end
