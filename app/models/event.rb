class Event < ActiveRecord::Base
  validates_presence_of :name
  # validates_presence_of :name, :description, :spots, :start_time, :end_time

  belongs_to :partner

  has_many :registrations
  has_many :volunteers, through: :registrations

  def add_volunteer(name, email)
    @volunteer = Volunteer.find_or_create_by(name: name, email: email)
    @volunteer.save!
    @volunteer.volunteer(id)
  end

  def spots_remaining
    spots - volunteers.count
  end
end
