class AddTicketReleaseDateToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :ticket_release_date, :date
  end
end
