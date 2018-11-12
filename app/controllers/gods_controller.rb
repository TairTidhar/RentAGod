class GodsController < ApplicationController
  def index
    @gods = God.all
  end

  def show
    @god = God.find(params[:id])
  end

  def god_params
    params.require(:god).permit(:name, :location, :description)
  end
end
