Rails.application.routes.draw do

  root 'projects#index'
  
  resources :projects, only: [:index, :new, :create, :destroy, :show] do
    resources :tasks, only: [:new, :create, :show, :destroy, :edit, :update]
  end
  
  resources :tasks, only: [:new, :create, :show, :destroy, :edit, :update]
  
  # get 'tasks/new'
  # get 'tasks/cereate'
  # get 'tasks/show'
  # get 'tasks/destroy'
  # get 'tasks/edit'
  # get 'tasks/update'
  # get 'projects/index'
  # get 'projects/new'
  # get 'projects/create'
  # get 'projects/destroy'
  # get 'projects/show'
  
end
