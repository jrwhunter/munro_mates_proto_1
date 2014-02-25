class CreateHills < ActiveRecord::Migration
  def change
    create_table :hills do |t|
      t.string :number
      t.string :name
      t.string :other_info
      t.string :origin
      t.string :book
      t.string :height
      t.string :grid_ref
      t.string :map
      t.string :related_hills

      t.timestamps
    end
  end
end
