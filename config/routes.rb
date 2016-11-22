Rails.application.routes.draw do
  root 'home#index'
  post '/' => 'home#new'
  get  '/url/:id' => 'home#url', as: 'get_url'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
