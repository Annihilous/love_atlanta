class Partner < ActiveRecord::Base
  validates_presence_of :name, :description, :website

  has_many :events
  accespts_nested_attributes_for :events
end
