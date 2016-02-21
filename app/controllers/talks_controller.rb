class TalksController < ApplicationController
  def index
    @talks = Talk.all
    @talk = Talk.new
  end

  def create
    talk = Talk.new(talk_params)
    talk.save
    redirect_to talks_index_path
  end

  def destroy
    talk = Talk.find_by(id: params[:talk][:id])
    if !talk
      redirect_to talks_index_path
    end
    talk.destroy
    redirect_to talks_index_path
  end

  private
  def talk_params
    params.require(:talk).permit(:message)
  end

end
