class SkillType < ApplicationRecord
    has_many :skills
    validates_associated :skills

    validates :type_name, presence: true
    validates :type_name, uniqueness: {case_sensitive: false}
end
