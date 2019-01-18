class CreateToursHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :tours_hotels do |t|
      t.integer :tour_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
