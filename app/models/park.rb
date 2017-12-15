class Park < ApplicationRecord
  include RandomPark

  validates_presence_of :name, :state

  scope :search, -> (name){ where("name like ?", "%#{{name}%")}

end
