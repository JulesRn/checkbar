class Bar < ApplicationRecord
  belongs_to :user
  has_many :reservations

  OPENING_DAYS = ['lundi','mardi','mercredi','jeudi', 'vendredi', 'samedi', 'dimanche']
end
