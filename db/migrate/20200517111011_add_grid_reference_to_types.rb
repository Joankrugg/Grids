class AddGridReferenceToTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :grids, :type, foreign_key: true
  end
end
