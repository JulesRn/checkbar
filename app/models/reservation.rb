class Reservation < ApplicationRecord
  belongs_to :bar
  belongs_to :user
  STATUS = ['En attente', 'accepté', 'refusé']
end
