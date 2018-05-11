Rails.application.routes.draw do

  #CRUD PAGO

  get '/pagos', to: 'pagos#index', as: 'pagos'
  get '/pagos/nuevo', to: 'pagos#nuevo' #new
  get '/pagos/:id', to: 'pagos#mostrar', as: 'pago' #show
  post '/pagos', to: 'pagos#crear', as: 'crear_pago'
  get 'pagos/:id/editar', to: 'pagos#editar', as: 'editar_pago'
  put 'pagos/:id', to: 'pagos#update'
  patch 'pagos/:id', to: 'pagos#update'
  delete 'pagos/:id', to: 'pagos#eliminar'

  #CRUD USUARIO

  get '/usuarios', to: 'usuarios#index', as: 'usuarios'
  get '/usuarios/nuevo', to: 'usuarios#nuevo' #new
  get '/usuarios/:id', to: 'usuarios#mostrar', as: 'usuario' #show
  post '/usuarios', to: 'usuarios#crear', as: 'crear_usuario'
  get 'usuarios/:id/editar', to: 'usuarios#editar', as: 'editar_usuario'
  put 'usuarios/:id', to: 'usuarios#update'
  patch 'usuarios/:id', to: 'usuarios#update'
  delete 'usuarios/:id', to: 'usuarios#eliminar'

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
