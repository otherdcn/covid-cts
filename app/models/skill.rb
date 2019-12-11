class Skill < ApplicationRecord
    belongs_to :skill_type
    validates :skill_type, presence: true

    belongs_to :person
    validates :person, presence: true
end
