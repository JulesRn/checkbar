class Review < ApplicationRecord
  belongs_to :bar
  belongs_to :user
  validates :content, :rating, presence: true
  validates_numericality_of :rating
  validates :rating, :inclusion => { :in => 0..5 }
end
