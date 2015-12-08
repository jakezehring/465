Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  get 'hunt', to: "hunts#info"
  get 'huntr', to: "hunts#requierments"
  get 'hunto', to: "hunts#open"
  
  resources :hunts do
  end

  delete '/admin/hunt', to: "hunts#destroy"

  get 'resort', to: "resorts#info"
  get 'resorta', to: "resorts#activities"
  get 'resortr', to: "resorts#requierments"
  get 'resorto', to: "resorts#open"

  get 'user/reservations', to: "user#index"
  get 'contact', to: "contact#index"

  get 'admin/hunt', to: "admin#hunt"
  get 'admin/resort', to: "admin#resort"
end
