class Field < ApplicationRecord
    has_many :specialisations
    validates_associated :specialisations

    validates :field, presence: true
    validates :field, uniqueness: {case_sensitive: false}
end
