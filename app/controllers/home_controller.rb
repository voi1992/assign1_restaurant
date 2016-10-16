class HomeController < ApplicationController
  def index
  end

  def menu

    if params[:section]

      @section = Section.where(name: params[:section]).first

    end

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
    end
  end
end
