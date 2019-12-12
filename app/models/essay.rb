class Essay < ApplicationRecord
    belongs_to :person
    validates :person, presence: true

    validates :person_id, uniqueness: true
end
