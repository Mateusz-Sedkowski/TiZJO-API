class Movie < ApplicationRecord

  validates :name, :director, presence: true
end
