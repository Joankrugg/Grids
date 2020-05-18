class AddThirdMusicalNoteReferenceToGrids < ActiveRecord::Migration[6.0]
  def change
    add_reference :grids, :third_musical_note, foreign_key: true
  end
end
