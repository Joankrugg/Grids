class CreateMusicalNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :musical_notes do |t|
      t.string :name

      t.timestamps
    end
  end
end
