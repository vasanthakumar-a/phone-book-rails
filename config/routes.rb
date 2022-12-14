Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root "contacts#index"

  resources :contacts do
    get '/page/:page', action: :index, on: :collection
  end
end
