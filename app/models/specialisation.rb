class Specialisation < ApplicationRecord
    belongs_to :person
    belongs_to :field
    
    validates :field_id, presence: true
    validates :person_id, presence: true
    validates :level, :station_duty, presence: true
end
