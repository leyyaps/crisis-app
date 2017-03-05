class StaticPagesController < ApplicationController
  def about
  end

  def home
    @tickets = Ticket.all
    @tickets = Ticket.order(:date)
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
