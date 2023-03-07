class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :buyer
      t.integer :quantity
      t.integer :cost
      t.references :musician, foreign_key: true
      t.references :show, foreign_key: true

      t.timestamps
    end
  end
end
