class Client < ApplicationRecord
  #include AASM

  #aasm do
    #state :created, initial: true
    #state :published, :canceled

    #event :publish do
      #transitions from: :created, to: :published
    #end

    #event :cancel do
      #transitions from: :published, to: :canceled
    #end

  #end

  has_many :events
end
