Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
	resources :gods do
		resources :bookings, only: [ :new, :create]
		resources :god_powers, only: [ :new, :create]
  end

  resources :bookings, only: :show

  get '/dashboard', to: "pages#dashboard"
  get '/owner_dashboard', to: "pages#owner_dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
