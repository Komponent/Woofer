class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :password
      t.date :dateofbirth
      t.boolean :gender

      t.timestamps
    end
  end
end
