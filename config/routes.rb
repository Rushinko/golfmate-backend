Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show]
      get '/golfcourse_image', to: 'unsplash#get_golf_course_image'
      put '/store_new_golf_course_image', to: 'unsplash#get_and_store_new_golf_course_image'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
