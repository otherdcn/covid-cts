class Essay < ApplicationRecord
    belongs_to :person
    validates :person, presence: true
end
