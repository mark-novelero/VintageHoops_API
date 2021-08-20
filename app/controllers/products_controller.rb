class ProductsController < ApplicationController



    def index
        products = Product.all
        render json: products
    end

    def show
        product = Product.find(params[:id])
        
        if product
            render json: product
        else
            render json: {error: "Product not found"}, status: 404
        end
    end

    def create 
        product = Product.create(product_params)
        render json: product 
    end 

    def update 
        product = Product.find(params[:id])
        product.update(product_params)
        render json: product
    end 

    def destroy
        product = Product.find(params[:id])
        product.destroy 
        render json: {message: "Product soldout"}
    end 
    
    
    private 

    def product_params 
        params.permit(:seller_id, :title, :product_type, :image, :desc, :size, :price, :team)
    end




end
