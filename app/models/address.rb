class Address < ActiveRecord::Base
  geocoded_by :full_street_address
  after_validation :geocode
end
