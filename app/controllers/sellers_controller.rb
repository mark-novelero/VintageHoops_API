class SellersController < ApplicationController

    def index
        sellers = Seller.all
        render json: sellers
    end


    def show
        seller = Seller.find(params[:id])

        if seller
            render json: seller
        else
            render json: {error: "Seller not found"}, status: 404
        end
    end


    def create 
        seller = Seller.create(seller_params)
        
        if seller.valid?
            render json: seller
        else
            render json: {error: "Unable to create new account"}
        end 
    end 

    def login
        seller = Seller.find_by(username: params[:username])
        
        if seller && seller.authenticate(params[:password])
            render json: {username: seller.username, token: encode_token({seller_id: seller.id})}
        else 
            render json: {message: "wrong username or password"}
        end
    end


    def update 
        seller = Seller.find(params[:id])
        seller.update(seller_params)
        render json: seller
    end 


    def destroy
        seller = Seller.find(params[:id])
        seller.destroy 
        render json: {message: "Deleted"}
    end 


    private 

    def seller_params 
        params.permit(:username, :password)
    end




end
