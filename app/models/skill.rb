class Skill < ApplicationRecord
    belongs_to :skill_type
    belongs_to :person
end
