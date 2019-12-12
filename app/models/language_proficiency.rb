class LanguageProficiency < ApplicationRecord
    belongs_to :person
    
    validates :person_id, :language, :read, :write, :speak, presence: true

    def get_read_rating
        case read
        when 1
            return "Beginner"
        when 2
            return "Intermediate"
        when 3
            return "Advanced"
        else
            return "Unknown"
        end
    end

    def get_write_rating
        case write
        when 1
            return "Beginner"
        when 2
            return "Intermediate"
        when 3
            return "Advanced"
        else
            return "Unknown"
        end
    end

    def get_speak_rating
        case speak
        when 1
            return "Beginner"
        when 2
            return "Intermediate"
        when 3
            return "Advanced"
        else
            return "Unknown"
        end
    end

end
