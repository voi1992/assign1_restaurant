class HomeController < ApplicationController
  def index
  end

  def menu

    if params[:section]

      @section = Section.where(name: params[:section]).first

      @food_items = sort_food_by_params(params[:sort], @section)
    end

  end

  def search
    @food_items = FoodItem.where("name like ?", "%#{params[:search]}%")
    render "home/menu"
  end

  def contact_us

  end

  def sort_food_by_params(params, section)

    case params
      when "alphabetical"
        section.food_items.order(:name)
      when "price low to high"
        section.food_items.sort { |a, b| a.price <=> b.price }

      when "price high to low"
        section.food_items.sort { |a, b| b.price <=> a.price }
      else
        section.food_items
    end
  end
end
