class Person < ApplicationRecord
    belongs_to :sector

    has_many :specialisations 
    has_many :skills
    has_many :qualifications
    has_many :language_proficiencies
    has_many :references
    has_many :professional_memberships
    has_many :employment_histories
    
    has_one :contact
    has_one :essay
end
