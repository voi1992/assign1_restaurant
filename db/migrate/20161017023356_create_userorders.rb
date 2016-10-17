class CreateUserorders < ActiveRecord::Migration[5.0]
  def change
    create_table :userorders do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.timestamps
    end
  end
end
