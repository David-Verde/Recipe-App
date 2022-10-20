class GeneralShoppingListController < ApplicationController
  def index
    recipe_foods = RecipeFood.pluck(:food_id)
    foods = Food.all
    @foods = []
    foods.each do |food|
      @foods.push(food) unless food.in?(recipe_foods)
    end
    prices = @foods.map { |n| n.price * n.quantity }
    @prices = prices.sum
  end
end
