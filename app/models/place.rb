class Place < ApplicationRecord
  # talks to the "places" table
  has_many :entries
  validates :name, presence: true, uniqueness: true
end
