class EnergiesController < ApplicationController
  def index
    @energies = Energy.all
  end

  def show
    @energy = Energy.find(params[:id])
  end

  def new
    @energy = Energy.new
  end

  def create
    @energy = Energy.new(energy_params)
    @energy.save
    redirect_to energies_path
  end

  private

  def energy_params
    params[:energy].permit(:name, :level, :date, :memo)
  end

end



