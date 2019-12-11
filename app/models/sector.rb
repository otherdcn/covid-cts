class Sector < ApplicationRecord
    has_many :people, dependent: :nullify
    validates_associated :people
    
    validates :sector, presence: true

    def sector_name
        return sector.to_s
    end
end
