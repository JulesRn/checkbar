class User < ApplicationRecord
 has_many :bars, dependent: :destroy
 has_many :reservations
 has_one_attached :avatar
 # validates :username, uniqueness: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
