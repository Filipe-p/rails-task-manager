Rails.application.routes.draw do

  get 'tasks', to: 'tasks#index'

  get 'tasks/:id', to: 'tasks#show'

  get 'new', to: 'tasks#new'

  post 'tasks', to: 'tasks#create'

  # patch 'tasks/:id', to: 'tasks#show

end
