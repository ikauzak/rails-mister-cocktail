class DosesController < ApplicationController
  # def index
  #   @doses = dose.all
  # end
  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      # @review = Review.new
      render 'cocktails/show'
    end
  end

  def destroy
    set_dose
    @dose.destroy
    redirect_to cocktail_path(@dose)
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
