Rails.application.routes.draw do
  get 'home/index'

  resources :rooms, except: [:show] do
    collection do
      get '/:slug' => 'rooms#show'
    end
  end
end
