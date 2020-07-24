class UserCategory < ApplicationRecord
  belongs_to :person
  
  # validates :category, uniqueness: {case_sensitive: false}
  # The above validation will prevent user category to be saved to any other person even if
  # that person does not have the category, cause it's already saved by someone else.
end
