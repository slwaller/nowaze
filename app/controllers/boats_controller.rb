class BoatsController < ApplicationController

  def index
    @boat = Boat.all
  end

  def show
    @boat = Boat.find params[:id]
  end

  def create
    @boat = Boat.create boat_params
    respond_to do |format|
      if @boat.save
        format.html { redirect_to @boat, notice: 'Boat was succesfully added!'}
      else
        format.html { render :new }
      end
    end
  end

  def new
    @boat = Boat.new
  end

  def edit
    @boat = Boat.find params[:id]
  end

  def update
  end

  def destroy
  end

  private
  def boat_params
    params.require(:boat).permit(:make, :model, :capacity)
  end
end
