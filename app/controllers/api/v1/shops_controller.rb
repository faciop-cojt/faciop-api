module Api
  module V1
    class ShopsController < ApplicationController
      def index
        shops = Shop.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded Shops', data: shops}, status: :ok
      end

      def show
        shop =  Shop.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded Shop: ' + params[:id], data: shop}, status: :ok
      end

      # def create
      #   shop = Shop.new(shop_params)
      #   if shop.save
      #     render json: {status: 'SUCCESS', message: 'Saved Shop', data: shop}, status: :ok
      #   else
      #     render json: {status: 'ERROR', message: 'Failed to save Shop', data: shop.errors}, status: :unprocessable_entity
      #   end
      # end

      private
      def shop_params
        params.permit(:name, :id)
      end

    end
  end
end
