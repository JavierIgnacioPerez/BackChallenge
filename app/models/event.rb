class Event < ApplicationRecord
  belongs_to :client
  has_many :tickets
end
