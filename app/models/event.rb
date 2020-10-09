class Event < ApplicationRecord

  belongs_to :client
  has_many :tickets

  validates :event_name, presence: true
  validates :start_date, presence: true
  validates :event_description, presence:  true
  validates :event_image, presence: true
  validates :tickets_avaible, presence: true
  validates :ticket_price, presence:  true

end
