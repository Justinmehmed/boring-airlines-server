class CreateBoringAirlines < ActiveRecord::Migration[5.2]
  def change
    create_table :boring_airlines do |t|
      t.text :Content

      t.timestamps
    end
  end
end
