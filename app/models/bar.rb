class Bar < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many_attached :photos
  OPENING_DAYS = ['lundi','mardi','mercredi','jeudi', 'vendredi', 'samedi', 'dimanche']
end
