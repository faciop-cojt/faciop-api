Rails.application.routes.draw do
  get 'model/create'
  get 'model/show'
  namespace 'api' do
    namespace 'v1' do
      resources :goods
      resources :model, only: [:show, :create]
      resources :shops
    end
  end
end
