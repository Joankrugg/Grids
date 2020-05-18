class GridsController < ApplicationController
  before_action :get_song
  before_action :set_grid, only: [:show, :edit, :update, :destroy]

  def new
    # we need @song in our `simple_form_for`
    @grid = @song.grids.build
  end

  def create
    @grid = @song.grids.build(grid_params)
    if @grid.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end


  def edit

  end

  def update
    if @grid.update(grid_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end




  private

  def get_song
    @song = Song.find(params[:song_id])
  end

  def set_grid
    @grid = @song.grids.find(params[:id])
  end

  def grid_params
    params.require(:grid).permit(:location, :song_id, :section_id, :type_id, :grid_location, :musical_note_id, :musical_scale_id, :second_musical_note_id, :second_musical_scale_id, :third_musical_note_id, :third_musical_scale_id, :fourth_musical_note_id, :fourth_musical_scale_id)
  end
end
