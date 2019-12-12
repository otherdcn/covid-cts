class Skill < ApplicationRecord
    belongs_to :skill_type

    belongs_to :person
    validates :person_id, :skill_type_id, :rating, presence: true
end
