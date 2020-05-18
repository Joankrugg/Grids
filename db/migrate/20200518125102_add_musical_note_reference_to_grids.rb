class AddMusicalNoteReferenceToGrids < ActiveRecord::Migration[6.0]
  def change
    add_reference :grids, :musical_note, foreign_key: true
  end
end
