class Specialisation < ApplicationRecord
    belongs_to :person
    validates :person, presence: true

    belongs_to :category
    validates :category, presence: true

    belongs_to :field
    validates :field, presence: true
end
