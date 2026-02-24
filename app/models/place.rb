class Place < ApplicationRecord
  # talks to the "places" table
  validates :name, presence: true, uniqueness: true
end
