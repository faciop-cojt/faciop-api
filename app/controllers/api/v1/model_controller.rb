module Api
  module V1
    class ModelController < ApplicationController
      protect_from_forgery :only => ["create"]

      def create
        @model = Model.new(model_params)
        if @model.save
          render json: {
            status: 'SUCCESS', message: 'Saved Good',
            data: {
              id: @model.id,
              goodid: @model.goodid,
              data:  @model.data.url,
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
          render json: {
            status: 'SUCCESS', message: 'Loaded Good',
            data: {
              id: @model[0].id,
              goodid: @model[0].goodid,
              data: @model[0].data.url
            }
          },
          status: :ok
        else
          render json: {
            status: 'FAILED', message: 'Loaded Poor',
          },
          status: 404
        end
      end

      private

      def model_params
        params.permit(:goodid, :data)
      end

    end
  end
end
