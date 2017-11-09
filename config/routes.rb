Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/create'

  get 'doses/edit'

  get 'doses/update'

  get 'doses/destroy'

  resources :ingredients

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
