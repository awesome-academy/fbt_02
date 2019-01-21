class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :price
      t.datetime :start_tour
      t.datetime :end_tour
      t.string :start_palace
      t.string :end_palace
      t.integer :category_id
      t.string :route
      t.string :transport
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
