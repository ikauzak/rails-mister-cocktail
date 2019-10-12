class DosesController < ApplicationController
  def index
    @doses = dose.all
  end

  def create
  end

  def show
    set_dose
  end

  def new
    @dose = dose.new
  end

  def destroy
  end

  private

  def set_dose
    @dose = dose.find(params[:id])
  end


end
