class Partner < ActiveRecord::Base
  validates_presence_of :name, :description, :website

  has_many :partnerships
  has_many :events, through: :partnerships
end
