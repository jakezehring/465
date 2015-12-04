Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get 'hunt', to: "hunt#index"
  get 'resort', to: "resort#index"
  get 'user/reservations', to: "user#reservatons"
  get 'contact', to: "contact#index"
  get 'admin', to: "admin#index"
end
