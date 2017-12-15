class Park < ApplicationRecord
  validates_presence_of :name, :state
end
