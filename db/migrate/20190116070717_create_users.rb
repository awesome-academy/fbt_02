class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender
      t.datetime :date_of_birth
      t.string :address
      t.string :phone
      t.string :avatar
      t.integer :role, default: 0, null:false

      t.timestamps
    end
  end
end
