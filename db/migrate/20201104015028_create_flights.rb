class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.date :date
      t.integer :flightnumber
      t.string :departure
      t.string :departureTime
      t.string :arrival
      t.string :arrivalTime 
      t.integer :plane
      t.integer :seat

      t.timestamps
    end
  end
end
