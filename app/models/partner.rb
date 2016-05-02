class Partner < ActiveRecord::Base
  validates_presence_of :name, :description, :website

  has_many :events
end
