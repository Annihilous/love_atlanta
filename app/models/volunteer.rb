class Volunteer < ActiveRecord::Base
  validates_presence_of :name, :email

  has_many :registrations
  has_many :events, through: :registrations
end
