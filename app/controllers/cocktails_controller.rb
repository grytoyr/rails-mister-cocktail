class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    # @dose = Dose.find(params[params[:cocktail][:dose_id])
    # @ingredient = Ingredient.find(params[:cocktail_id])
    # @cocktail.dose = @dose
    # @dose.dose = @dose
    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  private

  def params_cocktail
    params.require(:cocktail).permit(:name, :doses_id, :ingredients_id)
  end

end
