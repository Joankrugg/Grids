class AddFourthMusicalNoteToGrids < ActiveRecord::Migration[6.0]
  def change
    add_reference :grids, :fourth_musical_note, foreign_key: true
  end
end
