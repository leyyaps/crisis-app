class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :title
      t.text :description
      t.date :date
      t.string :author

      t.timestamps
    end
  end
end
