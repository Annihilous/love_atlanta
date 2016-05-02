class Partnership < ActiveRecord::Base
  belongs_to :event
  belongs_to :partner
end
