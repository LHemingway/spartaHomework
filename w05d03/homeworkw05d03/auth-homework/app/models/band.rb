class Band < ApplicationRecord
	has_many :users_band
	has_many :users, through: :users_band
end
