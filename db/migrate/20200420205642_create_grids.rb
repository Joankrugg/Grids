class CreateGrids < ActiveRecord::Migration[6.0]
  def change
    create_table :grids do |t|
      t.integer :number_of_boxes
      t.integer :location

      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
