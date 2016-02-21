class TalksController < ApplicationController
  def index
    @talks = Talk.all
  end

  def create
  end

  def destroy
  end
end
