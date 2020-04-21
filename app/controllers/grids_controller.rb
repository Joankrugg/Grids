class GridsController < ApplicationController

  def new
    # we need @song in our `simple_form_for`
    @song = Song.find(params[:song_id])
    @grid = Grid.new
  end

  def create
    @grid = Grid.new(grid_params)
    @song = Song.find(params[:song_id])
    @grid.song = @song
    if @grid.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end
  private

  def grid_params
    params.require(:grid).permit(:location, :number_of_boxes, :song_id, :section_id)
  end
end
