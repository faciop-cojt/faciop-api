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
              goodid: @model.goodid,
              data:  @model.data.url,
            }
          },
          status: :ok
        else
          render json: {
            status: 'SUCCESS', message: 'Saved Good',
          },
          status: :unprocessable_entity
        end
      end

      def show
        @model = Model.where(goodid: params[:id])
        render json: {
          status: 'SUCCESS', message: 'Loaded Good',
          data: @model.to_a.inspect
        },
        status: :ok
      end

      private

      def model_params
        params.permit(:goodid, :data)
      end

    end
  end
end
