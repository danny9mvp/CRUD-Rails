Rails.application.routes.draw do
  root 'tanques#index'
  resources :tanques
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
