class StaticPagesController < ApplicationController
  def about
  end
  def sevenlegged
  end
  def home
   @tickets = Ticket.upcoming
   
  end

  def jobs
  end

  def loaderio
  end


  def termsandconditions
  end
end
