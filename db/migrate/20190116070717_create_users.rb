class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :gender
      t.datetime :date_of_birth
      t.string :address
      t.string :number_phone
      t.string :avatar
      t.integer :role

      t.timestamps
    end
  end
end
