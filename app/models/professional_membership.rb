class ProfessionalMembership < ApplicationRecord
    belongs_to :person

    validates :person_id, :body_name, presence: true
end
