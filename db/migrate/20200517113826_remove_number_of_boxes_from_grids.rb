class RemoveNumberOfBoxesFromGrids < ActiveRecord::Migration[6.0]
  def change
    remove_column :grids, :number_of_boxes
  end
end
