class Phrase < ApplicationRecord
	has_many :words, through: :matches
end
