class Event < ApplicationRecord
  has_many :clients
  has_many :tickets
end
