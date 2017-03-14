class SocialsController < ApplicationController

    def new
      @social = Social.new
    end

    def create
      @social = Social.new(params[:social])
      @social.request = request
      if @social.deliver
       
        redirect_to socials_path, notice: "Thank you! Your message has been sent."
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
    end
end
