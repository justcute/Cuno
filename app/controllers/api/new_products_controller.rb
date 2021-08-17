module Api
  class NewProductsController < ApplicationController
    def index
      render json: Product.last(params[:amount]), image_size: [400, 600]
    end
  end
end
