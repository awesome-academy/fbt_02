class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :users_id
      t.integer :tours_id

      t.timestamps
    end
  end
end
