class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @songs = Song.all
  end

  def new
    @user = current_user
    @song = Song.new
  end

  def create
    @user = current_user
    @song = @user.songs.new(song_params)
    @song.user = @user
    if
      @song.save
      redirect_to song_path(@song)
    else
      render new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :youtube_link, :user_id, :artist)
  end
end
