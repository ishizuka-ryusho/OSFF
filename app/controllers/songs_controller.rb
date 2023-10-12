class SongsController < ApplicationController
  def top
  end
  
  def index
    end
  
  def song
    @song = Song.new
  end
  def new
    @song = Song.new
  end
  
  def show
    @songs = Song.find_by(id: params[:id])
  end
    def create
      song = Song.new(song_params)
      params[:song][:question1] ? song.question1 = params[:song][:question1] : false
      if song.save
          flash[:notice] = "診断が完了しました"
          redirect_to song_path(song.id)
      else
          redirect_to :action => "new"
      end
    end

    private
    def song_params
        params.require(:song).permit(:id, question1: [])
    end

   end