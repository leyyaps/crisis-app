class StaticPagesController < ApplicationController
  def about
  end

  def home
    expired = Date.yesterday

    @tickets = Ticket.order(:date).first(4)
    # @arr = @tickets.first(4)
  end

  def jobs
  end

 

  def socials
  end

  def termsandconditions
  end
end
