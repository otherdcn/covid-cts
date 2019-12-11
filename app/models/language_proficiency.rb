class LanguageProficiency < ApplicationRecord
    belongs_to :person
    validates :person, presence: true
    
end
