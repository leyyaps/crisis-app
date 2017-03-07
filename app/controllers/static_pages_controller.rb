class StaticPagesController < ApplicationController
  def about
  end

  def home
  
    @tickets = Ticket.order(:date)
    @arr = @tickets.first(4)
  end

  def jobs
  end

  def lostproperty
  end

  def socials
  end

  def termsandconditions
  end
end
