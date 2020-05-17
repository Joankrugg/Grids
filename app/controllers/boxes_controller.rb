class BoxesController < ApplicationController
  before_action :get_song
  before_action :set_box, only: [:show, :edit, :update, :destroy]

  def new
    # we need @song in our `simple_form_for`
    @box = @song.boxes.build
  end

  def create
    @box = @song.boxes.build(box_params)
    if @box.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end


  def edit

  end

  def update
    if @box.update(box_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end




  private

  def get_song
    @song = Song.find(params[:song_id])
  end

  def set_box
    @box = @song.boxes.find(params[:id])
  end

  def box_params
    params.require(:box).permit(:song_id, :type_id)
  end
end
