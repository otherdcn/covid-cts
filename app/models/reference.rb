class Reference < ApplicationRecord
    belongs_to :person

    validates :person_id, :full_name, :email, :employer, presence: true
end
