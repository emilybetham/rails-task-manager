Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # READ
  get    'tasks',          to: 'tasks#index'

  # CREATE
  get    'tasks/new',      to: 'tasks#new', as: :new
  post   'tasks',          to: 'tasks#create'

  # SHOW
  get    'tasks/:id',      to: 'tasks#show',  as: :show

  # UPDATE
  get    'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch  'tasks/:id',      to: 'tasks#update', as: :task

  # DESTROY
  delete 'tasks/:id',      to: 'tasks#destroy', as: :destroy
end
