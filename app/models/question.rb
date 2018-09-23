class Question < ApplicationRecord
	has_one :user
	has_many :answers
end
