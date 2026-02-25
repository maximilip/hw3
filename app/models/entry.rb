class Entry < ApplicationRecord
  # talks to the "entries" table
  belongs_to :place
  validates :place_id, presence: true
end
