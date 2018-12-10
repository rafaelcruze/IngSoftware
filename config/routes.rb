Rails.application.routes.draw do

  get 'search/create'

  root to: "bienvenido#index"

  resources :questions do
    resources :answers
  end


  devise_for :users, :skip => [:registrations]
  as :user do
  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  put 'users' => 'devise/registrations#update', :as => 'user_registration'
end

  #CRUD USERS
  get '/users', to: 'users#index', as: 'users'
  get '/users/nuevo', to: 'users#nuevo' #new
  get '/users/:id', to: 'users#mostrar', as: 'user' #show
  post '/users', to: 'users#crear', as: 'crear_user'
  get 'users/:id/editar', to: 'users#editar', as: 'editar_user'
  put 'users/:id', to: 'users#update'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#eliminar'

  #CRUD AGENDA

  get '/agendas', to: 'agendas#index', as: 'agendas'
  get '/agendas/nuevo', to: 'agendas#nuevo' #new
  get '/agendas/:id', to: 'agendas#mostrar', as: 'agenda' #show
  post '/agendas', to: 'agendas#crear', as: 'crear_agenda'
  get 'agendas/:id/editar', to: 'agendas#editar', as: 'editar_agenda'
  put 'agendas/:id', to: 'agendas#update'
  patch 'agendas/:id', to: 'agendas#update'
  delete 'agendas/:id', to: 'agendas#eliminar'


  #CRUD PAGO

  get '/pagos', to: 'pagos#index', as: 'pagos'
  get '/pagos/nuevo', to: 'pagos#nuevo' #new
  get '/pagos/:id', to: 'pagos#mostrar', as: 'pago' #show
  post '/pagos', to: 'pagos#crear', as: 'crear_pago'
  get 'pagos/:id/editar', to: 'pagos#editar', as: 'editar_pago'
  put 'pagos/:id', to: 'pagos#update'
  patch 'pagos/:id', to: 'pagos#update'
  delete 'pagos/:id', to: 'pagos#eliminar'


  #CRUD ESTUDIANTE

  get '/estudiantes', to: 'estudiantes#index', as: 'estudiantes'
  get 'estudiantes/nuevo', to: 'estudiantes#nuevo' #new
  get '/estudiantes/:id', to: 'estudiantes#mostrar', as: 'estudiante' #show
  post '/estudiantes', to: 'estudiantes#crear', as: 'crear_estudiante'
  get 'estudiantes/:id/editar', to: 'estudiantes#editar', as: 'editar_estudiante'
  put 'estudiantes/:id', to: 'estudiantes#update'
  patch 'estudiantes/:id', to: 'estudiantes#update'
  delete 'estudiantes/:id', to: 'estudiantes#eliminar'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
