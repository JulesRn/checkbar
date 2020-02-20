class Bar < ApplicationRecord
  include PgSearch::Model
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :reservations
  has_many_attached :photos
  has_many :reviews, dependent: :destroy

  pg_search_scope :search_by_name_description_and_category,
    against: [ :name, :description, :category, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  multisearchable against: [:name, :description, :category, :address]

  OPENING_DAYS = ['lundi','mardi','mercredi','jeudi', 'vendredi', 'samedi', 'dimanche']
  CATEGORYS = ["Rooftop", "Branché", "Lounge", "Vins", "Latino", "Pub", "Tapas", "Dansant", "Insolite", "Karaoké", "Billard", "Foot", "Club", "Sport", "Piano", "Anniversaire"]
end
