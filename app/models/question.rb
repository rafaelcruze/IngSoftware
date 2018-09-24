class Question < ApplicationRecord
	has_one :user
	has_many :answers

	validates :content, presence: {message: 'Ingrese algún contenido a la consulta'},
	length: {maximum: 200, message:'Largo máximo de 200'}, length: {minimum: 30, message:'Largo mínimo de 30'}

end
