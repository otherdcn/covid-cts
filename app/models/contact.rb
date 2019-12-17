class Contact < ApplicationRecord
    belongs_to :person
    validates :person, presence: true

    validates :person_id, uniqueness: true
    validates :email, :mobile, presence: true
end
