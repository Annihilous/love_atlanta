class Event < ActiveRecord::Base
  validates_presence_of :name
  # validates_presence_of :name, :description, :spots, :start_time, :end_time

  belongs_to :partner
  belongs_to :address

  accepts_nested_attributes_for :address

  has_many :registrations
  has_many :volunteers, through: :registrations

  mount_uploader :featured_image, FeaturedImageUploader

  ACTIVITIES = {'Clean Up' => 'clean_up', 'Pass Out Food' => 'pass_out_food', 'Dance Performance' => 'dance_performance', 'Other' => 'other'}

  def add_volunteer(name, email)
    @volunteer = Volunteer.find_or_create_by(name: name, email: email)
    @volunteer.save!
    @volunteer.volunteer(id)
    @volunteer
  end

  def spots_filled
    volunteers.count
  end

  def spots_remaining
    spots - volunteers.count
  end
end
