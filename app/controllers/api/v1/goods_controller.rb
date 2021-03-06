module Api
  module V1
    class GoodsController < ApplicationController
      # index is a default name for api
      def index
        goods = Good.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded Goods', data: goods}, status: :ok
      end
      def show
        good = Good.find(params[:id])
        shop = Shop.find(good.shopid)
        render json: {status: 'SUCCESS', message: 'Loaded Good: ' + params[:id], data: good, shopdata: shop}, status: :ok
      end
      # def create
      #   good = Good.new(good_params)
      #   if good.save
      #     render json: {status: 'SUCCESS', message: 'Saved Good', data: good}, status: :ok
      #   else
      #     render json: {status: 'ERROR', message: 'Failed to save Good', data: good.errors}, status: :unprocessable_entity
      #   end
      # end
      private

      def good_params
        params.permit(
            :name, :shopid, :description, :data,
            :price, :category, :link, :thumbnail, :date
        )
      end

    end
  end
end
