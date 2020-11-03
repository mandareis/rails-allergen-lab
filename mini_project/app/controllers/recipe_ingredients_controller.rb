class RecipeIngredientsController < ApplicationController
  def index
  end

  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def create
    @recipe_ingredient = RecipeIngredient.new(ir_params)
    if @recipe_ingredient.save
      redirect_to @recipe_ingredient
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def ir_params
    params.require(:recipe_ingredient).permit(:recipe_id, :ingredient_id, :measurements)
  end
end
