class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :tickets, :ticket_id, :ticket_link_id
  end
end
