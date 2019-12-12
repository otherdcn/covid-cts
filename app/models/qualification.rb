class Qualification < ApplicationRecord
    belongs_to :person
    
    validates :person_id, :qual_obtained, :institution, presence: true
end
