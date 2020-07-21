Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :authors, except: [:index]
resources :posts, except: [:index]
end
