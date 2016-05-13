class Address < ActiveRecord::Base
  validates_presence_of :city,
                        :state

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    if self.street_line_1 == "" && self.street_line_2 == ""
      [city, state].compact.join(', ')
    elsif street_line_1.present? && street_line_2 == ""
      [street_line_1, city, state].compact.join(', ')
    else
      [street_line_1, street_line_2, city, state].compact.join(', ')
    end
  end

end
