class EmploymentHistory < ApplicationRecord
    belongs_to :person

    validates :person_id, :employer, :position_held, presence: true
end
