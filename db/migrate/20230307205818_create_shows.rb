class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.date :date
      t.string :venue
      t.integer :ticket_price
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end
