class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :small_image
      t.string :cover_image
      t.string :square_image
      t.string :ticket_id
      t.date :date
      t.time :opening_time
      t.string :theme
      t.text :description

      t.timestamps
    end
  end
end
