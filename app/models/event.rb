class Event < ApplicationRecord
  validates :date, :place, :name, presence: true
end
