class Category < ApplicationRecord
    has_many :specialisations
    validates_associated :specialisations

    validates :category, presence: true
    validates :category, uniqueness: {case_sensitive: false}
end
