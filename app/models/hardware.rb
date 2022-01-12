class Hardware < ApplicationRecord
  belongs_to :server

  def self.options
    ['Motherboard', 'CPU', 'RAM', 'Rack units']
  end
  
end
