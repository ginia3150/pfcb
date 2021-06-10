class TotalsController < ApplicationController
  before_action :set_total, only: [:edit, :update, :destroy]
  def index
  end

  def new
    @total = Total.new
  end

  def create
    @total = Total.new(total_params)
    if @total.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @total.update(total_params)
      redirect_to total_path(@total.id)
    else
      render :edit
    end
  end

  def destroy
    @total.destroy
    redirect_to root_path
  end

  private
  def total_params
    params.require(:total).permit(:protein, :fat, :carb, :calorie).merge(user_id: current_user.id)
  end

  def set_total
    @total = Total.find(params[:id])
  end
end