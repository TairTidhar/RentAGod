class GodsController < ApplicationController
	skip_before_action :authenticate_user!, only: :index

  def index
    if params[:search] != nil
      @gods = God.where(name: params[:search])
    else
      @gods = God.all
    end
  end

  def show
    @god = God.find(params[:id])
  end

  def new
    @god = God.new
  end

  def create
    @god = God.new(god_params)
    @god.user = current_user
    if @god.save
      redirect_to @god, notice: 'The God was successfully created! 🙏'
    else
      render :new
    end
  end

  def edit
    @god = God.find(params[:id])
  end

  def update
    @god = God.find(params[:id])
    @god.update(god_params)
    redirect_to god_path(@god)
  end

  def destroy
    @god = God.find(params[:id])
    @god.destroy
    redirect_to gods_path, notice: 'The God was successfully destroyed 🚮 '
  end

  private

  def god_params
    params.require(:god).permit(:name, :location, :description, :price, :photo)
  end
end
