Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'stories/index'

  get 'stories/show'

  root 'stories#index'

  resources :stories do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
