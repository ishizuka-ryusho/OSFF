class BeatsController < ApplicationController
    
    def new
        @beat = Beat.new
      end
      def new2
        @beat = Beat.new
      end
      
      def show
        @beats = Beat.find_by(id: params[:id])
      end
      def show2
        @beats = Beat.find_by(id: params[:id])
      end
        def create
          beat = Beat.new(beat_params)
          params[:beat][:question3] ? beat.question3 = params[:beat][:question3] : false
          if beat.save
              flash[:notice] = "診断が完了しました"
              redirect_to beat_path(beat.id)
          else
              redirect_to :action => "new"
          end
        end
    
        private
        def beat_params
            params.require(:beat).permit(:id, question3: [])
        end
    
    end
