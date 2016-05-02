class Volunteer < ActiveRecord::Base
  validates_presence_of :name, :email
  validates_uniqueness_of :email

  has_many :registrations
  has_many :events, through: :registrations

  def volunteer(event_id)
    Registration.create(volunteer_id: id, event_id: event_id)
  end
end
