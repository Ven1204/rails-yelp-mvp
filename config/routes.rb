Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do
      # /restaurants/top
      get :index
    end

    member do
      # /restaurants/:id/chef
    end
    resources :reviews, only: [:new, :create]
  end
end
