class Server < ApplicationRecord
    has_many :hardwares
    has_many :server_softwares
    has_many :server_people

    def owner
        people = self.server_people.find{|server_people| server_people.role == 'Owner'}

        return people ? people.people.name : 'Empty'
    end
end
