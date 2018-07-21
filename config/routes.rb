Rails.application.routes.draw do

  devise_for :users
  root to: "bienvenido#index"

  #CRUD APODERADO
  get '/apoderados', to: 'apoderados#index', as: 'apoderados'
  get '/apoderados/nuevo', to: 'apoderados#nuevo' #new
  get '/apoderados/:id', to: 'apoderados#mostrar', as: 'apoderado' #show
  post '/apoderados', to: 'apoderados#crear', as: 'crear_apoderado'
  get 'apoderados/:id/editar', to: 'apoderados#editar', as: 'editar_apoderado'
  put 'apoderados/:id', to: 'apoderados#update'
  patch 'apoderados/:id', to: 'apoderados#update'
  delete 'apoderados/:id', to: 'apoderados#eliminar'

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
