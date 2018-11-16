class GodsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search] != nil
      @gods = God.global_search(params[:search])
    else
      @gods = God.all
    end
  end

  def show
    @booking = Booking.new
    @god = God.find(params[:id])
  end

  def new
    @god = God.new
  end

  def create
    @god = God.new(god_params)
    @god.user = current_user
    if @god.save
      params[:god][:power_ids].each do |id|
        godpower = GodPower.new(power_id: id)
        godpower.god = @god
        godpower.save
      end
      redirect_to gods_path, notice: 'The God was successfully created! 🙏'
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
