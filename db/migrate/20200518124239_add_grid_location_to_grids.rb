class AddGridLocationToGrids < ActiveRecord::Migration[6.0]
  def change
    add_column :grids, :grid_location, :integer
  end
end
