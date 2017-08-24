class Student < ApplicationRecord
  belongs_to :classe
  belongs_to :parent
  belongs_to :group
  has_many :messages
end
