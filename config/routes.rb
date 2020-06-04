Rails.application.routes.draw do
  root 'projects#index'
  
  resources :projects, only: [:index, :new, :create, :destroy, :show] do
      resources :tasks, only: [:new, :create, :show, :destroy, :edit, :update]
  end
end
