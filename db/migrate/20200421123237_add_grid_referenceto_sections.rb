class AddGridReferencetoSections < ActiveRecord::Migration[6.0]
  def change
    add_reference :grids, :section, foreign_key: true
  end
end
