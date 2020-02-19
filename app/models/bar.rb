class Bar < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many_attached :photos
  OPENING_DAYS = ['lundi','mardi','mercredi','jeudi', 'vendredi', 'samedi', 'dimanche']
  CATEGORYS = ["Rooftop", "Branché", "Lounge", "Vins", "Latino", "Pub", "Tapas", "Dansant", "Insolite", "Karaoké", "Billard", "Foot", "Club", "Sport", "Piano", "Anniversaire"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
