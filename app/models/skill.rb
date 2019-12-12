class Skill < ApplicationRecord
    belongs_to :skill_type

    belongs_to :person
    validates :person_id, :skill_type_id, :rating, presence: true

    def get_rating
        case rating
        when 1
            return "Excellent"
        when 2
            return "Good"
        when 3
            return "Average"
        else
            return "Unknown"
        end
    end
end
