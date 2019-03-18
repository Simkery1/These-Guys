class Costume < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings
end
