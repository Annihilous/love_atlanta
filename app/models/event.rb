class Event < ActiveRecord::Base
  validates_presence_of :name, :description, :spots, :start_time, :end_time

  has_many :partnerships
  has_many :partners, through: :partnerships

  has_many :registrations
  has_many :volunteers, through: :registrations
end
