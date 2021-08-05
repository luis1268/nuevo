Rails.application.routes.draw do
  resources :perros
  resources :leads
  resources :chocolates
  resources :tortugas
  resources :users
  get 'roles/index'
  get 'roles/new'
  get 'roles/show'
  get 'roles/update'
  get 'roles/delete'
  get 'roles/create'
  resources :angelitopros
  resources :nuevos
  resources :luis
  resources :clientes
  resources :usuarios
  # resources genera todas las rutaa de los modelos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
