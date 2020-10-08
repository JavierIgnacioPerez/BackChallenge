class Event < ApplicationRecord
  include AASM

  aasm do
    state :Created, initial: true
    state :Published, :Canceled

    event :Publish do
      transitions from: :Created, to: :Published
    end
    event :Cancel do
      transitions from: :Published, to: :Canceled
    end
  end

  belongs_to :client
  has_many :tickets
end
