class AddMusicalScaleReferenceToGrids < ActiveRecord::Migration[6.0]
  def change
    add_reference :grids, :musical_scale, foreign_key: true
  end
end
