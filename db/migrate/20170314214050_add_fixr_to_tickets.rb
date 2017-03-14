class AddFixrToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :fixr, :string
  end
end
