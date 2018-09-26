class Question < ApplicationRecord
	belongs_to :user
	has_many :answers

	validates :content, presence: {message: 'Ingrese algún contenido a la consulta'},
	length: {maximum: 200, message:'Largo máximo de 200'}, length: {minimum: 10, message:'Largo mínimo de 10'}

end
