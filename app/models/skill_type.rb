class SkillType < ApplicationRecord
    has_many :skills
    validates_associated :skills
end
