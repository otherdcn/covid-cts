class UserCategory < ApplicationRecord
  belongs_to :person
  
  validates :category, uniqueness: {case_sensitive: false}
end
