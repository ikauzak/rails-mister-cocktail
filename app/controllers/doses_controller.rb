class DosesController < ApplicationController
  # def index
  #   @doses = dose.all
  # end
  def new
    @dose = Dose.new
  end

  def create
    if @doses.save
      redirect_to doses_path(@dose)
    else
      render :new
    end
  end

  def show
    set_dose
  end

  def destroy
    set_dose
    @dose.destroy
    redirect_to dose_path(@dose)
  end

  private

  def set_dose
    @dose = dose.find(params[:id])
  end


end
