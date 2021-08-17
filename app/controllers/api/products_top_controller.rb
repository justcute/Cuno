module Api
  class ProductsTopController < ApplicationController
    def index
      render json: Product.all, image_size: [1000, 350]
    end
  end
end
