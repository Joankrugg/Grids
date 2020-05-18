class CreateThirdMusicalScales < ActiveRecord::Migration[6.0]
  def change
    create_table :third_musical_scales do |t|
      t.string :name

      t.timestamps
    end
  end
end
