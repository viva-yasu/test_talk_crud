class TalksController < ApplicationController
  def index
    @talks = Talk.all
    @new_talk = Talk.new
    @current_login_user_id = 1
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to talks_index_path
    else
      before_render
      render 'index'
    end
  end

  def destroy
    talk = Talk.find_by(id: params[:talk][:id])
    if talk.nil?
      return redirect_to talks_index_path
    end
    talk.destroy
    redirect_to talks_index_path
  end

  private
  def talk_params
    params.require(:talk).permit(:message, :user_id)
  end

  def before_render
    @talks = Talk.all
    @new_talk = Talk.new
    @current_login_user_id = 1
  end

end
