class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # as locataire
  has_many :bookings, foreign_key: :locataire_id

  # as owner
  has_many :costumes, foreign_key: :owner_id, dependent: :destroy
  has_many :reservations, through: :costumes, source: :bookings
end
