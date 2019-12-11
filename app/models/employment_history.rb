class EmploymentHistory < ApplicationRecord
    belongs_to :person
    validates :person, presence: true
end
