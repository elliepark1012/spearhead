class BrandsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found 

    def index 
        render json:Brand.all, include: :hats, status: :ok
    end 

    def show 
        brand = Brand.find(params[:id])
        render json: brand, include: :hats, status: :ok
    end

    def create 
        brand = Brand.create!(brand_params)
        render json: brand, status: :created
    end 

    def update 
        brand = Brand.find(params[:id])
        brand.update!(brand_params)
        render json: brand, status: :accepted
    end 

    def destroy 
        brand = Brand.find(params[:id])
        brand.destory 
        head :no_content
    end 

    private 

    def brand_params    
        params.permit(:name, :about, :website)
    end 
    
    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :render_unprocessable_entity
    end 

    def render_not_found(error)
        render json: {errors: {error.model => "Not Found"}}, status: not_found
    end 
end 