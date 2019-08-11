class Factory < ApplicationRecord
  has_many :employees, dependent: :destroy
  validates_presence_of :name
end
