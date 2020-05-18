class CreateSecondMusicalNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :second_musical_notes do |t|
      t.string :name

      t.timestamps
    end
  end
end
