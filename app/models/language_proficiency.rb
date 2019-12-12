class LanguageProficiency < ApplicationRecord
    belongs_to :person
    
    validates :person_id, :language, :read, :write, :speak, presence: true
end
