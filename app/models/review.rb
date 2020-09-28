class Review < ApplicationRecord
	belongs_to :user
	belongs_to :restaurant

	validates :rating,:comment, presence: true

	validates :rating, numericality: {
		only_integer: true,
		greater_than_to_equal_to: 1,
		less_than_or_equal_to: 5,
		message: "Can only be whole number between 1 and 5"
	}

end
