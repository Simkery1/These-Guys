class Booking < ApplicationRecord
  belongs_to :costume_id
  belongs_to :locataire_id
end
