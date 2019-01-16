class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name_hotel
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
