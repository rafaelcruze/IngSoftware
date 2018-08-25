# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  TipoUsuario.create!([{
                      descripcion: 'Administrador'},
                      {descripcion: 'Apoderado'},
                      {descripcion: 'Tia'
    }])

User.create!([{
                email: 'admin@admin.com',
                password: '123456',
                password_confirmation: '123456',
                tipo_usuario_id: (TipoUsuario.find_by_descripcion('Administrador')).id
  }])

Estado.create!([{
              descripcion: 'Pagado'},
              {descripcion: 'Pendiente'
  }])

Jornada.create!([{
                descripcion: 'Jornada Completa'
                },
                {
                  descripcion: 'Jornada Mañana'
                },
                  {
                    descripcion: 'Jornada Tarde'
  }])

NivelEducacional.create!([{
                    descripcion: 'Sala Cuna Menor'
                  },
                  {
                    descripcion: 'Sala Cuna Mayor'
                },
                {descripcion: 'Nivel Medio Menor'
                },
                {descripcion: 'Nivel Medio Mayor'
                },
                {descripcion: 'Nivel de Transición'

  }])

TipoPago.create!([{
                  descripcion: 'Matrícula'},
                  {descripcion: 'Mensualidad'
  }])

  Comuna.create!([{
                  descripcion: 'Santiago'},
                  {descripcion: 'Cerrillos'},
                  {descripcion: 'Cerro Navia'},
                  {descripcion: 'Conchalí'},
                  {descripcion: 'El Bosque'},
                  {descripcion: 'Estación Central'},
                  {descripcion: 'Huechuraba'},
                  {descripcion: 'Independencia'},
                  {descripcion: 'La Cisterna'},
                  {descripcion: 'La Florida'},
                  {descripcion: 'La Granja'},
                  {descripcion: 'La Pintana'},
                  {descripcion: 'La Reina'},
                  {descripcion: 'Las Condes'},
                  {descripcion: 'Lo Barnechea'},
                  {descripcion: 'Lo Espejo'},
                  {descripcion: 'Lo Prado'},
                  {descripcion: 'Macul'},
                  {descripcion: 'Maipú'},
                  {descripcion: 'Nunoa'},
                  {descripcion: 'Pedro Aguirre Cerda'},
                  {descripcion: 'Peñalolén'},
                  {descripcion: 'Providencia'},
                  {descripcion: 'Pudahuel'},
                  {descripcion: 'Quilicura'},
                  {descripcion: 'Quinta Normal'},
                  {descripcion: 'Recoleta'},
                  {descripcion: 'Renca'},
                  {descripcion: 'San Joaquín'},
                  {descripcion: 'San Miguel'},
                  {descripcion: 'San Ramón'},
                  {descripcion: 'Vitacura'

    }])
