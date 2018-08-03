class DosesController < ApplicationController
  # def index
  #   @doses = Dose.all
  # # end

  # # def show
  # #   @dose = Dose.find(params[:id])
  # # end

  # def new
  #   @dose = Dose.new
  # end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to @dose.cocktail
    else
      render "new"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private
    def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)

  end
end
