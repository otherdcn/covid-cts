class Person < ApplicationRecord
    belongs_to :sector
    validates :sector, presence: true

    has_many :user_categories
    validates_associated :user_categories

    has_many :specialisations, dependent: :destroy
    validates_associated :specialisations

    has_many :skills, dependent: :destroy
    validates_associated :skills
    
    has_many :qualifications, dependent: :destroy
    validates_associated :qualifications
    
    has_many :language_proficiencies, dependent: :destroy
    validates_associated :language_proficiencies
    
    has_many :references, dependent: :destroy
    validates_associated :references
    
    has_many :professional_memberships, dependent: :destroy
    validates_associated :professional_memberships
    
    has_many :employment_histories, dependent: :destroy
    validates_associated :employment_histories

    has_many :assignments, dependent: :destroy
    validates_associated :assignments
    
    has_one :contact, dependent: :destroy
    validates_associated :contact

    has_one :essay, dependent: :destroy
    validates_associated :essay

    validates :first_name, :last_name, :id_passport_number, :citizenship , presence: true
    validates :id_passport_number, uniqueness: true

    
    def full_name
        return first_name + ' ' + last_name
    end

end
