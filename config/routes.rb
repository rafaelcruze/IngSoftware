Rails.application.routes.draw do

  get '/estudiantes', to: 'estudiantes#index', as: 'estudiantes'
  get '/estudiantes/nuevo', to: 'estudiantes#nuevo' #new
  get '/estudiantes/:id', to: 'estudiantes#mostrar', as: 'estudiante' #show
  post '/estudiantes', to: 'estudiantes#crear', as: 'crear_estudiante'
  get 'estudiantes/:id/editar', to: 'estudiantes#editar', as: 'editar_estudiante'
  put 'estudiantes/:id', to: 'estudiantes#update'
  patch 'estudiantes/:id', to: 'estudiantes#update'
  delete 'estudiantes/:id', to: 'estudiantes#eliminar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
