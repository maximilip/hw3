class Entry < ApplicationRecord
  # talks to the "entries" table
  validates :place_id, presence: true
end
