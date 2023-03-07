class Band < ApplicationRecord
    has_many :musicians
    has_many :shows
end
