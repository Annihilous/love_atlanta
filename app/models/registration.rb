class Registration < ActiveRecord::Base
  belongs_to :event
  belongs_to :volunteer

  validates_uniqueness_of :volunteer_id, scope: :event
end
