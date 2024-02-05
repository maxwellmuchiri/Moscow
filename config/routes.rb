Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :liquors
      resources :vapes
      resources :extras
    end
  end

  # Your other routes go here if needed
end
