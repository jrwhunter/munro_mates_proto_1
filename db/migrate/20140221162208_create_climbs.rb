class CreateClimbs < ActiveRecord::Migration
  def change
    create_table :climbs do |t|
      t.string :user_name
      t.string :hill_number
      t.date :date
      t.string :comments

      t.timestamps
    end
  end
end
