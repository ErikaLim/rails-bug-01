Rails.application.routes.draw do
  root "quotes#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get 'signup' => 'registrations#new', as: :signup
  post 'signup' => 'registrations#create'
end
