class MusicsController < ApplicationController

  def new
    @music = Music.new
  end
  def new2
    @music = Music.new
  end
  
  def show
    @musics = Music.find_by(id: params[:id])
  end
  def show2
    @musics = Music.find_by(id: params[:id])
  end
    def create
      music = Music.new(music_params)
      params[:music][:question2] ? music.question2 = params[:music][:question2] : false
      if music.save
          flash[:notice] = "診断が完了しました"
          redirect_to music_path(music.id)
      else
          redirect_to :action => "new"
      end
    end

    private
    def music_params
        params.require(:music).permit(:id, question2: [])
    end

end
