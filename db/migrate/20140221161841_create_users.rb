class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :club
      t.boolean :visible
      t.string :preferences

      t.timestamps
    end
  end
end
