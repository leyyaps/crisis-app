class CreateLostproperties < ActiveRecord::Migration[5.0]
  def change
    create_table :lostproperties do |t|

      t.timestamps
    end
  end
end
