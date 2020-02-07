class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['username'], password: ENV['password'], except: [:index, :show]
  def show
    @number_of_products = Product.count
    @number_of_categories = Category.count
  end
end
