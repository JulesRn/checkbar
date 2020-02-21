class Reservation < ApplicationRecord
  belongs_to :bar
  belongs_to :user
  STATUS = ['Pending', 'Accepted', 'Refused']
end
