class StaticPagesController < ApplicationController
  def about
  end

  def home
   @tickets = Ticket.upcoming
   
  end

  def jobs
  end

 


  def termsandconditions
  end
end
