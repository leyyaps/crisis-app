class AddTicketReleaseTimeToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :ticket_release_time, :time
  end
end
