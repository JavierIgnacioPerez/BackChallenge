class Ticket < ApplicationRecord
  belongs_to :event

  validates_uniqueness_of :confirmation_code
end
