class Question < ApplicationRecord
	has_many :user
	has_many :answers
end
