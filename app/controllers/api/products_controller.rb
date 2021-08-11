module Api
  class ProductsController < ApplicationController
    def index
      render json: Product.all.with_attached_image
    end
  end
end
