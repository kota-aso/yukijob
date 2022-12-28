Rails.application.routes.draw do
  get 'jobs/index'
  get 'jobs/new'
  root to: 'jobs#index'
  resources :jobs
end
