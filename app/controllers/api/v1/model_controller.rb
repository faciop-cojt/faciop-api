module Api
  module V1
    class ModelController < ApplicationController
      protect_from_forgery :only => ["create"]

      def create
        @model = Model.new(model_params)
        @good = Good.find(params[:goodid])
        if @model.save
          @good.update(data: @model.data.url)
          render json: {
            status: 'SUCCESS', message: 'Saved Good',
            data: {
              id: @model.id,
              goodid: @model.goodid,
              data:  @model.data.url
            }
          },
          status: :ok
        else
          render json: {
            status: 'FAILED', message: 'Saved Poor',
          },
          status: :unprocessable_entity
        end
      end

      def show
        @model = Model.where(goodid: params[:id])
        if @model.size > 0
          arr = @model.map{
            {
              id: _1.id,
              goodid: _1.goodid,
              data: _1.data.url
            }
          }
          render json: {
            status: 'SUCCESS', message: 'Loaded Good',
            data: arr
          },
          status: :ok
        else
          render json: {
            status: 'FAILED', message: 'Not Found',
          },
          status: 404
        end
      end

      def delete

      end

      private

      def model_params
        params.permit(:goodid, :data)
      end

    end
  end
end
