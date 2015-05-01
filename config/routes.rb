Rails.application.routes.draw do
  get 'home/index'

  resources :rooms do
    get '/:slug' => 'rooms#show'
  end
end
