class Event < ActiveRecord::Base
  validates_presence_of :name
  # validates_presence_of :name, :description, :spots, :start_time, :end_time

  belongs_to :partner

  has_many :registrations
  has_many :volunteers, through: :registrations
end
