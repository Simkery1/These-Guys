class Booking < ApplicationRecord
  belongs_to :costume
  belongs_to :locataire, class_name: 'User'
end
