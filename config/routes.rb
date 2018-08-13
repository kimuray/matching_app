Rails.application.routes.draw do
  resources :users, { format: 'json' }
end
