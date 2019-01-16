class CreateToursHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :tours_hotels do |t|
      t.integer :tours_id
      t.integer :hotels_id

      t.timestamps
    end
  end
end
