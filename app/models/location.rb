class Location < ApplicationRecord
  has_many :monsters

  before_save :generate_slug

end
