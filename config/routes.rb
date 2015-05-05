Rails.application.routes.draw do
  get 'home/index'
  resources :rooms do
    resources :topics, only: :new
  end
  get '/healthmonitor' => 'health#ping'
  get '/:slug' => 'rooms#show_by_slug'
  
  resources :topics, only: [:create, :show]
  resources :responses, only: :create
  
  
end
