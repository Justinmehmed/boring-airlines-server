class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.date :date
      t.integer :flightnumber
      t.string :departure
      t.string :arrival
      t.integer :plane
      t.integer :seats
    end
  end
end
