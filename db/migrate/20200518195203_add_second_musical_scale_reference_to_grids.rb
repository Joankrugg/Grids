class AddSecondMusicalScaleReferenceToGrids < ActiveRecord::Migration[6.0]
  def change
    add_reference :grids, :second_musical_scale, foreign_key: true
  end
end
