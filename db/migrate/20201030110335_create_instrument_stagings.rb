class CreateInstrumentStagings < ActiveRecord::Migration[6.0]
  def change
    create_table :instrument_stagings do |t|
      t.references :instrument, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
