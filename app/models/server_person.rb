class ServerPerson < ApplicationRecord
  belongs_to :server
  belongs_to :people, class_name: 'Person'
end
