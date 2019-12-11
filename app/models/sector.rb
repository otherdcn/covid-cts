class Sector < ApplicationRecord
    has_many :people

    def sector_name
        return sector.to_s
    end
end
