module Api
  module V1
    class GoodsController < ApplicationController
      # index is a default name for api
      def index
        goods = Good.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded Goods', data: goods}, status: :ok
      end
    end
  end
end

