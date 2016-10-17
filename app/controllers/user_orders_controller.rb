class UserOrdersController < ApplicationController

  def create
    @userorder = Userorder.new(user_order_params)
    params[:order_list].length.times do |i|
      @userorder.food_items << FoodItem.find(params[:order_list][i].to_i)
    end
    if @userorder.save
      @total_price = 0
      render 'home/thank_you_page'
    end
  end

  private

  def user_order_params
    params.require(:userorder).permit(:name, :phone_number, :address)
  end
end
