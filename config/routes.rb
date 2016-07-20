Rails.application.routes.draw do
  resources :users, path: '/' do
    resources :boxes do
      resources :versions, id: /[^\/]+/ do
        resources :providers
      end
    end
  end
end
