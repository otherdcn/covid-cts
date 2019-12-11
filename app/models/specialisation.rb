class Specialisation < ApplicationRecord
    belongs_to :person
    belongs_to :category
    belongs_to :field
end
