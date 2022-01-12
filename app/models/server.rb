class Server < ApplicationRecord
    has_many :hardwares
    has_many :server_softwares
    has_many :server_people
end
