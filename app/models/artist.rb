class Artist < ApplicationRecord
    has_many :genres
    has_many :songs, through: :genres
end
