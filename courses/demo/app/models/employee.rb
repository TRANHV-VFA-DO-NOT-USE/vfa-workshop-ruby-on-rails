class Employee < ApplicationRecord
  belongs_to :factory
  validates :first_name, length: { minimum: 2 }
  validates :last_name, presence: true
end
